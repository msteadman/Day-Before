#!/usr/bin/env ruby -w

# given YYYY-MM-DD return the one day earlier as YYYYMMDD

if ARGV.empty?
  print "Usage: ", $0, " YYYY-MM-DD\n"
  exit 1
end
inarray = ARGV[0].split('-')

# convert to seconds since epoch, subtract one day (86400 seconds)
#
log_day = Time.gm(inarray[0], inarray[1], inarray[2])
merge_day = log_day - 86400

# convert back to string and get bits we need
printf("%d%02d%02d\n", merge_day.year, merge_day.month, merge_day.day)

exit 0
