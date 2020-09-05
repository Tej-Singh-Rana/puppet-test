
class firewall_node1 {
    firewalld_port { "6300":
      ensure => present,
      zone => 'public',
      port => 6300,
      protocol => 'tcp',
      }

      exec { 'firewall-cmd --reload ':
         command => 'firewall-cmd --reload',
         path     => '/usr/bin:/usr/sbin:/bin',
         provider => shell,
         subscribe => Firewalld_port['6300'],

      }

    }

  class firewall_node2 {
     firewalld_port { "5009":
      ensure => present,
      zone => 'public',
      port => 5009,
      protocol => 'tcp',
      }

      exec { 'firewall-cmd --reload ':
         command => 'firewall-cmd --reload',
         path     => '/usr/bin:/usr/sbin:/bin',
         provider => shell,
         subscribe => Firewalld_port['5009'],

      }

   }

class firewall_node3 {
   firewalld_port { "8099":
      ensure => present,
      zone => 'public',
      port => 8099,
      protocol => 'tcp',
      }

      exec { 'firewall-cmd --reload ':
         command => 'firewall-cmd --reload',
         path     => '/usr/bin:/usr/sbin:/bin',
         provider => shell,
         subscribe => Firewalld_port['8099'],

      }

  }
