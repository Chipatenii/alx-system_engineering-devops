# Puppet manifest to kill a process named "killmenow"

# Use exec resource to execute the pkill command
exec { 'killmenow':
  command     => 'pkill killmenow',
  path        => ['/bin', '/usr/bin'],
  refreshonly => true,
}
