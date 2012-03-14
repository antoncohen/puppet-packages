# Class: packages::groups::base
#
# Realized some basic packages.
#
# Parameters:
#
# Actions: Installs packages
#
# Requires:
#
# Sample Usage:
#   include packages::groups::base
#
# [Remember: No empty lines between comments and class definition]
class packages::groups::base {
  include packages::virtual

  Packages::Package <| title == 'bash' |>
  Packages::Package <| title == 'bash-completion' |>
  Packages::Package <| title == 'vim' |>
  Packages::Package <| title == 'dnsutils' |>
  Packages::Package <| title == 'tree' |>
}
