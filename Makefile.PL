
# Makefile.PL -- Makefile template for PerlPoint::styles.
#
# This file is part of the "PerlPoint::styles" collection.
# PerlPoint::styles are free software, you can redistribute them
# and/or modify it under the terms of the Artistic License.

# load module
use ExtUtils::MakeMaker;

# the package requires modern perl
require 5.00503;

my $version='0.02';

# write makefile
$ok=WriteMakefile(
                  NAME         => 'PerlPoint::styles',
                  ABSTRACT     => 'PerlPoint style examples.',
                  VERSION      => $version,
                  PREREQ_PM    => {
                                   PerlPoint::Template::Traditional => 0.01,
                                   PerlPoint::Template::TT2         => 0.01,
                                   Test::Harness                    => 1.25,
                                   Test::More                       => 0.11,
                                  },
                  dist         => {
                                   COMPRESS                         => 'gzip -9',
                                   SUFFIX                           => 'tgz',
                                  },
                 );

# provide additional informations
warn <<EOM if $ok;

Welcome to the PerlPoint style examples $version!

The best way to install this package is to copy the styles
under demo/styles into your PerlPoint styles base directory.

EOM
