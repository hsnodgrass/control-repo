# Puppet master profile
class profile::puppet::master {
  include ngrok
  ngrok::tunnel { 'webhook':
    proto => 'tcp',
    addr  => '8170',
  }

  # Add a firewall rule so folks can reach me on port 8140.
  file { '/etc/firewalld/services/puppetmaster.xml':
    ensure => file,
    source => 'puppet:///modules/profile/firewalld/puppetmaster.xml',
    notify => Exec['add_firewalld_rule'],
  }
  exec { 'add_firewalld_rule':
    path        => $facts['path'],
    command     => 'firewall-cmd --permanent --add-service=puppetmaster',
    refreshonly => true,
    notify      => Exec['firewalld_reload'],
  }
  exec { 'firewalld_reload':
    path        => $facts['path'],
    command     => 'firewall-cmd --reload',
    refreshonly => true,
  }

}
