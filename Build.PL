#!perl

use strict;
use warnings;
use Module::Build;
use File::Spec;

# Copyright (C) 2010 Science and Technology Facilities Council.
# All Rights Reserved.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place,Suite 330, Boston, MA 02111-1307,
# USA

# Set it up.
my $build = Module::Build->new
  (
   module_name => 'Starlink::AMS',
   dist_abstract => 'Messaging interface to ADAM Tasks',
   license  => 'gpl',
   dist_author => [
              'Tim Jenness <t.jenness@jach.hawaii.edu>',
             ],
   dist_version => '1.02',
   meta_merge => {
               resources =>  {
                              repository => "git://starlink.jach.hawaii.edu/perl-Starlink-AMS.git",
                             },
                },
   requires => {
                'Proc::Simple' => 1.13,
                'IO::Pipe' => 0,
               },
   build_requires => {
                      'Test::More' => 0,
                     },
  );

$build->create_build_script;
