#! /bin/bash
cat superbowl.html |  tr -s '[[:punct:][:space:]]' '\n'   | tr '[A-Z]' '[a-z]' | sort -f |uniq -c  | sort -n | tail -100
