node default {}

node "stapp01" {
	      include ssh_node01
}

node "stapp02" {
	      include ssh_node02
}

node "stapp03" {
	      include ssh_node03
}

     class ssh_node01 {
      ssh_authorized_key { 'stapp01':
          ensure => present,
          user   => 'robot',
          type   => 'ssh-rsa',
          target => '/home/robot/.ssh/authorized_keys',
          key    => '$HOME/.ssh/id_rsa.pub',
        }
     }

     class ssh_node02 {
     ssh_authorized_key { 'stapp02':
        ensure => present,
        user   => 'lisa',
        type   => 'ssh-rsa',
        target => '/home/lisa/.ssh/authorized_keys',
        key    => '$HOME/.ssh/id_rsa.pub',
}
     }

     class ssh_node03 {
     ssh_authorized_key { 'stapp03':
       ensure => present,
       user   => 'mike',
       type   => 'ssh-rsa',
       target => '/home/mike/.ssh/authorized_keys',
       key    => '$HOME/.ssh/id_rsa.pub',
}
     }
