# CD4PE profile
<<<<<<< Updated upstream
class profile::puppet::cd4pe {
  include ngrok
  ngrok::tunnel { 'cd4pe_8000':
    proto => 'tcp',
    addr  => '8000',
  }
}
=======
class profile::puppet::cd4pe {}
>>>>>>> Stashed changes
