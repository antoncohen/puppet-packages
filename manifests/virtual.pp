# Class: packages::virtual
#
# Provides virtual @packages::package resources that can be realized.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#   include packages::virtual
#   Packages::Package <| title == 'vim' |>
#
# [Remember: No empty lines between comments and class definition]
class packages::virtual {
  include packages::names

  @packages::package { 'bash':
    package => $packages::names::bash,
  }

  @packages::package { 'bash-completion':
    package => $packages::names::bash_completion,
  }

  @packages::package { 'dnsutils':
    package => $packages::names::dnsutils,
  }

  @packages::package { 'man':
    package => $packages::names::man,
  }

  @packages::package { 'tree':
    package => $packages::names::tree,
  }

  @packages::package { 'vim':
    package => $packages::names::vim,
  }
}
