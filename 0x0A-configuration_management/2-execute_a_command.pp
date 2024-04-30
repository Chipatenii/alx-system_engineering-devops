# Puppet manifest to kill a process named "killmenow"

# Use exec resource to execute the pkill command
exec { 'kill_killmenow_process':
  command => '/usr/bin/pkill killmenow',
}
