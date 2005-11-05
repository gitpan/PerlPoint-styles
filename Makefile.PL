
# Makefile.PL -- Makefile template for PerlPoint::styles.
#
# This file is part of the "PerlPoint::styles" collection.
# PerlPoint::styles are free software, you can redistribute them
# and/or modify it under the terms of the Artistic License.

# load module
use ExtUtils::MakeMaker;

# the package requires modern perl
require 5.00503;

my $version='0.01';

# write makefile
$ok=WriteMakefile(
                  NAME         => 'PerlPoint::styles',
                  ABSTRACT     => 'PerlPoint style examples.',
                  VERSION      => $version,
                  PREREQ_PM    => {
                                   PerlPoint::Template::Traditional => 0.01,
                                   Test::Harness                    => 1.25,
                                   Test::More                       => 0.11,
                                  },
                  dist         => {
                                   COMPRESS                         => 'gzip -9',
                                   SUFFIX                           => 'tgz',
                                  },
                  EXE_FILES    => ['demo/pp2sdf', 'demo/pp2tdo'],
                 );

# provide additional informations
warn <<EOM if $ok;

Welcome to the PerlPoint style examples $version!

Please see the README file for further details.

The installation is well prepared now,
and you might run "make test" and
"make install".

EOM
