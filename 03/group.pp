# Install manually puppet-yum module in the master node.
# As per current date, puppet module install puppet-yum --version 4.2.0
# After installation check a list of packages, rpm -qa --last | more

node default {}

node "agent-node01", "agent-node02", "agent-node03"
 {
           include yum_group
 }

 class yum_group {
    yum::group { 'Fedora Packager':
      ensure => present,
       timeout => 300,
       }
 }
