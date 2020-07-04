node default {}

node "code.world.com" {

            include file
}

                 class file {
                 file { "/opt/dba/code.txt":
                    ensure => present,
                    content => "Welcome to Coding Word!",
                    mode => "0600",
               }
}
