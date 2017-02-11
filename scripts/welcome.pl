#!/usr/bin/perl

use strict;

# Capture the ip info
(my $ip = `ifconfig`) =~ s/^.*inet addr:(10\.\d+\.\d+\.\d+).*$/$1/s;
print $ip;
