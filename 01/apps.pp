include 'archive'

archive { '/opt/apps/apps.zip':
   ensure => present,
   source => 'file:///usr/src/apps/apps.zip',
   extract => true,
   extract_path => '/opt/apps',
   cleanup => true,
    }

node default {}

node "stapp01", "stapp02", "stapp03" {
	
	include archive
}
