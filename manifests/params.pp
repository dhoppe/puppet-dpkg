# = Class: dpkg::params
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
class dpkg::params {
  case $::lsbdistcodename {
    'squeeze': {
      $ensure = present
    }
    default: {
      fail("Module ${module_name} does not support ${::lsbdistcodename}")
    }
  }
}
