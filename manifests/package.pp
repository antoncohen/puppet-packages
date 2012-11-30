# Definition: packages::package
#
# The packages::package is just a wrapper around the 'package' type.
# It avoids buggy behavior around realizing virtual resources via an alias
# when name is blank. It allows name selectors to evaluate to undef, in which
# case the package resource will no be created, and there will be no error.
#
# Parameters:
#
# Actions: Creates package resources
#
# Requires:
#
# Sample Usage:
#  include packages::names
#
#  @packages::package { 'vim':
#    package => $packages::names::vim,
#  }
#
#  Packages::Package <| title == 'vim' |>
#
# [Remember: No empty lines between comments and class definition]
define packages::package(
  $ensure=installed,
  $package=undef) {

  if $package {
    package { $package:
      ensure => $ensure,
    }
  }
}
