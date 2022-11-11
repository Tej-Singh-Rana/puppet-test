$public_key='AAAAB3NzaC1yc2EAAAADAQABAAABAQDEkgEFoJ8afho0C6rYmRCbPhfRpieaoQ4Ud0ZEPCVLYUmjhVYrzn1Qy1NPxza0SSPlDeTM7xlj4nKS5lG76LRlm5c3zy769+2hWG6wr4jRvGHBwjmof0OSD8fTrELQrED+YoIv5Oitz2mJ5RKraogHmiJB2LYIRmDERSs8BC3nICwE/xMMy41ZIgfD+AIa8LnD+QK7VEqtSmwobkCb7d7M4U5L1jQWqpSpprhhmFImMnF5HptjNYtc6ZkiPqsJOSexKHR40UU5kSwLCe0V/EVioznAL7Vn0aQCS6P1W3vrrvy0EdqSkm7pxRM7Nod6uW/FcekOl1ypomUlkfylYWVH'


class ssh_node1 {
   ssh_authorized_key { 'tony@stapp01':
     ensure => present,
    user   => 'tony',
     type   => 'ssh-rsa',
     key    => $public_key,
   }
 }
 class ssh_node2 {
   ssh_authorized_key { 'steve@stapp02':
     ensure => present,
     user   => 'steve',
     type   => 'ssh-rsa',
     key    => $public_key,
   }
 }
 class ssh_node3 {
   ssh_authorized_key { 'banner@stapp03':
     ensure => present,
     user   => 'banner',
     type   => 'ssh-rsa',
     key    => $public_key,
   }
 }
 node stapp01.stratos.xfusioncorp.com {
   include ssh_node1
 }
 node stapp02.stratos.xfusioncorp.com {
   include ssh_node2
 }
 node stapp03.stratos.xfusioncorp.com {
   include ssh_node3
 }
