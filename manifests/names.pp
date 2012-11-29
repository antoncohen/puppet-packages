# Class: packages::names
#
# This class provides parameters for package names.
# It uses the $osfamily fact to select the correct package name.
# $osfamily requires facter >= 1.6.2
#
# Parameters: Lots of package names
#
# Actions:
#
# Requires: facter >= 1.6.2
#
# Sample Usage:
#  include packages::names
#  package { "$packages::names::bash":
#    ensure => installed,
#  }
#
# [Remember: No empty lines between comments and class definition]
class packages::names {
  $bash = $::osfamily ? {
    RedHat => 'bash',
    Debian => 'bash',
    default => undef,
  }

  $bash_completion = $::osfamily ? {
    RedHat => undef,
    Debian => 'bash-completion',
    default => undef,
  }

  $dnsutils = $::osfamily ? {
    RedHat => 'bind-utils',
    Debian => 'dnsutils',
    default => undef,
  }

  $git = $::osfamily ? {
    RedHat => 'git',
    Debian => 'git',
    default => undef,
  }

  $man = $::osfamily ? {
    RedHat => ['man', 'man-pages', 'man-pages-overrides'],
    Debian => ['manpages', 'man-db'],
    default => undef,
  }

  $tree = $::osfamily ? {
    RedHat => 'tree',
    Debian => 'tree',
    default => undef,
  }

  $vim = $::osfamily ? {
    RedHat => 'vim-enhanced',
    Debian => 'vim',
    default => undef,
  }
}
