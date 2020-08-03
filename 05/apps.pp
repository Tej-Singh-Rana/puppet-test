node default {}

node "stapp02" {

   file_line { '/opt/security/apps.txt':
      path => '/opt/security/apps.txt',
      replace => true,
      line => '<Content to replace with match message!!>',
      match => '<Message should be match in the file!!>',
        }
    }
