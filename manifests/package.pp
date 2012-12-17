# = Class: dpkg::package
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
class dpkg::package {
  package { 'dpkg':
    ensure => present,
  }
}
