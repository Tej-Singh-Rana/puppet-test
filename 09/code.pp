node default { }
node 'stapp01.com', 'stapp02.com', 'stapp03.com' {
    include ntpconfig
}
     
  class ntpconfig {
     package { "ntp":
       ensure => present,
     }
     file { "/etc/ntp.conf":
        ensure => present,
     }
     file_line { "ntp.conf":
        ensure   => present,
        path     => '/etc/ntp.conf',
        line     => 'server 1.south-america.pool.ntp.org',
     }
}
