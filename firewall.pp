class firewall {
  ufw { 'allow apache':
    action => 'allow',
    port   => '80',
  }
}

include firewall
