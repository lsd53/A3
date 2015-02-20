#! /bin/bash
curl 'http://www.cs.cornell.edu/courses/cs2043/2015sp/assignments/superbowl.html' | sed 's/<.*>//g' > superbowl.html
