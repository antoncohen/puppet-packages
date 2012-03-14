# Class: packages
#
# This module contains parameters for package names on different distros.
# There is a new packages::package resource.
# It includes virtual packages::package resources and groups that realize them.
#
# Parameters: In packages::names
#
# Actions: Provides parameters and virtual resources
#
# Requires: facter >= 1.6.2
#
# Sample Usage:
#  include packages::names
#  package { "$packages::names::bash":
#    ensure => installed,
#  }
#
#  @packages::package { 'vim':
#    package => $packages::names::vim,
#  }
#
#  Packages::Package <| title == 'vim' |>
#
# [Remember: No empty lines between comments and class definition]
class packages {
  # Does not include anything by default
}
