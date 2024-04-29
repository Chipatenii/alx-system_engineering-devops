# Define the SSH client configuration file
file { '/home/ubuntu/.ssh/config':
  ensure  => present,
  owner   => 'ubuntu',
  group   => 'ubuntu_group'
  mode    => '0600',
  content => "\
Host 100.25.133.89
    HostName 100.25.133.89
    User ubuntu
    IdentityFile ~/.ssh/school
    PreferredAuthentications publickey
    PasswordAuthentication no
",
}
