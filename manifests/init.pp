# = Class: dpkg
#
# This module manages dpkg
#
# == Parameters: none
#
# == Actions:
#
# == Requires: see Modulefile
#
# == Sample Usage:
#
class dpkg {
  class { 'dpkg::package': }
  class { 'dpkg::config': }
}
