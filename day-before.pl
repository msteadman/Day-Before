#!/usr/bin/perl -w

# Take a date in form YYYY-MM-DD and return one day earlier in YYYYMMDD format

use strict;
use Time::Local;

my $logdate = $ARGV[0];
my ($year, $month, $day);

($year, $month, $day) = split(/-/, $logdate);

my $logtime = timelocal(0, 0, 12, $day, $month - 1, $year - 1900);

(undef, undef, undef, $day, $month, $year, undef, undef, undef) = localtime($logtime - 86400);

printf ("%s%02s%02s\n", $year + 1900, $month + 1, $day);
