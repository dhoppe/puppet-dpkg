class dpkg inherits dpkg::params {
  file { '/etc/cron.d/get-selections':
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/dpkg/common/etc/cron.d/get-selections',
  }

  file { '/etc/logrotate.d/get-selections':
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/dpkg/common/etc/logrotate.d/get-selections',
  }
}