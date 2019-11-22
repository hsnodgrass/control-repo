# Puppet master profile
<<<<<<< Updated upstream
class profile::puppet::master {}
=======
class profile::puppet::master {
  include ngrok
  ngrok::tunnel { 'webhook':
    proto => 'tcp',
    addr  => '8170',
  }
}
>>>>>>> Stashed changes
