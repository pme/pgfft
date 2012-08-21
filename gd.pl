#!/usr/bin/perl

use strict;

my $PI = 3.14159;
my $L = 1000;

for (my $i=0; $i<$L ;$i++) {
  my $t = $i * 1.0/1000.0;
  my $x = 0.7 * sin(2.0 * $PI * 50.0 * $t) + sin(2.0 * $PI * 120.0 * $t);
  print "INSERT INTO fft_test VALUES ($t, $x);\n";
}
