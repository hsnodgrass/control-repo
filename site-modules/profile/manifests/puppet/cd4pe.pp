# CD4PE profile
class profile::puppet::cd4pe {
  ngrok::tunnel { 'cd4pe_8000':
    proto => 'tcp',
    addr  => '8000',
  }
}
