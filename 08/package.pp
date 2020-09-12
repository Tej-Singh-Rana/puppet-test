node default {}

node "stapp01.com","stapp02.com","stapp03.com" {
	
  package {'vsftpd':
      ensure => installed,
      name => vsftpd,
    }
	
	service {"vsftpd":
	   ensure => running,
	   name => vsftpd,
	   enable => true,
	   }
}
