class glance {
  file { '/etc/glance/':
    ensure  => directory,
    owner   => 'glance',
    group   => 'root',
    mode    => 770,
    require => Package['glance']
  }
  package { "glance": 
         name => $operatingsystem  ? {
		    'default' => 'glance',
		     'ubuntu' => 'glance',
		    'debian'  => 'glance',
		    'centos'  => 'openstack-glance' },
	  ensure => present, 
	}


}
		
