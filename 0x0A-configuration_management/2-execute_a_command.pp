# execute_a_command.pp
# Description: Puppet manifest to kill a process named "killmenow" using pkill

exec { 'kill_killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  refreshonly => true,
}

