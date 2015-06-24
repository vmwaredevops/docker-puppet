# install the hello package on the system

file { '/tmp/helloworld':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => 'Hello World!\n';
}
