# Puppet manifest to install Flask version 2.1.0 using pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => ['/usr/bin'],
  refreshonly => true,
  notify      => Exec['verify_flask_installed'],
}

exec { 'verify_flask_installed':
  command     => '/usr/local/bin/flask --version',
  path        => ['/usr/local/bin'],
  logoutput   => true,
  refreshonly => true,
}
