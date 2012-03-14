# Packages #

A Puppet module that provides parameters for package names.

Uses the $osfamily fact introduced in facter 1.6.2 to select the correct
package name for the operating system, e.g., 'vim' vs. 'vim-enhanced'.
Names default to 'undef' for unknown operating systems or if a package
is not readily available for an OS.

This module defines the packages::package type. The packages::package type
allows you to realize packages even when the name resolves to 'undef'.

## Usage ##

Use packages::names to create virtual packages or normal packages:

    include packages::names

    @packages::package { 'vim':
       package => $packages::names::vim,
    }

    Packages::Package <| title == 'vim' |>

    package { "$packages::names::bash":
      ensure => installed,
    }

Or include a package group:

    include packages::groups::base

## Author ##

* Anton Cohen <anton@antoncohen.com>
* [Source](https://github.com/antoncohen/puppet-packages)
* [Homepage](http://www.antoncohen.com/)
* [@antoncohen](http://twitter.com/antoncohen)
