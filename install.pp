include apt 
apt::ppa {'ppa:webupd8team/sublime-text-3 -y':}

package {'git':
ensure => 'installed',
}

package {'awscli':
ensure => 'installed'
}

package {'docker.io':
ensure => 'installed'
}


package {'sublime-text-installer':
ensure => 'present',
}

