class apache {
  package { 'apache2':
    ensure => installed,
  }

  service { 'apache2':
    ensure => running,
    enable => true,
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    content => '<h1>Welcome to Apache Server!</h1>',
  }
}

include apache
