node default {}

node "stapp01.stratos.xfusioncorp.com", "stapp02.stratos.xfusioncorp.com", "stapp03.stratos.xfusioncorp.com"{
        include local_yum_repo
}
       class local_yum_repo {
       yumrepo    { 'epel_local':          # title
           ensure => present,
           name =>  'epel_local',          # (repository_id)
           descr => 'epel_local',          # name
           enabled => true,
           baseurl => 'file:///packages/downloaded_rpms',            # given location of the source packages
           gpgcheck => false,
           target => '/etc/yum.repos.d/epel_local.repo',             # create a yum repo in the location

   }
      package { 'vsftpd':          # title
        ensure => installed,
        name => 'vsftpd',          # package name
         }
}
