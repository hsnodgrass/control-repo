# Role for cd4pe node
class role::cd4pe {
  include profile::base::linux
  include profile::puppet::cd4pe
}
