
# install_flask.pp

# Ensure python3-venv is installed
package { 'python3-venv':
  ensure => 'installed',
}

# Create a virtual environment
exec { 'create_virtual_environment':
  command => '/usr/bin/python3 -m venv /path/to/venv', # Replace /path/to/venv with your desired location
  creates => '/path/to/venv/bin/python',
  require => Package['python3-venv'],
}

# Install Flask version 2.1.0 in the virtual environment
exec { 'install_flask':
  command => '/path/to/venv/bin/pip install Flask==2.1.0',
  require => Exec['create_virtual_environment'],
}

