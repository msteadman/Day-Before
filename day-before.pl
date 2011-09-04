#!/usr/bin/perl -w

# Take a date in form YYYY-MM-DD and return one day earlier in YYYYMMDD format

use strict;
use Time::Local;

my $logdate = $ARGV[0];

# convert input string to date, subtract one day (86400 seconds)
#
my ($year, $month, $day) = split(/-/, $logdate);
my $logtime = timelocal(0, 0, 12, $day, $month - 1, $year - 1900);
(undef, undef, undef, $day, $month, $year, undef, undef, undef) = localtime($logtime - 86400);

# convert back to string and print
printf ("%s%02s%02s\n", $year + 1900, $month + 1, $day);

exit(0);
