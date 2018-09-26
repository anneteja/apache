# Copyright 2018 Your name here, unless otherwise noted.
#
class apache{
	    include apache::package
	    include apache::config
	    include apache::service

	    Class['apache::package'] -> Class['apache::config'] ~> Class['apache::service']
        }
