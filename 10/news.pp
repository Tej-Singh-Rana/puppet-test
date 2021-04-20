class multi_package_node1 {
   $package1 = ["vim-enhanced", "zip" ]
   package { $package1:
    ensure => present,
    }
 }


class multi_package_node2 {
    $package2 = ["vsftpd", "httpd"]
    package { $package2:
      ensure => present,
       }
 }

class multi_package_node3 {
      $package3 = ["nginx", "tomcat"]
      package { $package3:
        ensure => present;
        }
    }
