exec {'apt-update':
command => 'apt-get update',
path => '/bin:/usr/bin',
timeout => 0

}

include apt
apt::ppa {'ppa:webupd8team/sublime-text-3 -y':
before => exec ['apt-update']
}

package {'git':
ensure => 'installed',
}

package {'awscli':
ensure => 'installed',
}

package {'docker.io':
ensure => 'installed',
}

package {'sublime-text-installer':
ensure => 'installed',
require => exec ['apt-update']
}



