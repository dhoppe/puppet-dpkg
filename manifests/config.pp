# = Class: dpkg::config
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
class dpkg::config (
  $ensure = hiera('ensure', $dpkg::params::ensure)
) inherits dpkg::params {
  validate_re($ensure, '^(absent|present)$')

  file {
    '/etc/cron.d/get-selections':
      ensure => $ensure,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => 'puppet:///modules/dpkg/common/etc/cron.d/get-selections';
    '/etc/logrotate.d/get-selections':
      ensure => $ensure,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => 'puppet:///modules/dpkg/common/etc/logrotate.d/get-selections';
  }
}
