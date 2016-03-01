include apt 
apt::ppa {'ppa:webupd8team/sublime-text-3':}

package {'sublime-text-installer':
ensure => 'installed',
}

package {'git':
ensure => 'installed',
}

package {'awscli':
ensure => 'installed'
}

package {'docker.io':
ensure => 'installed'
}



