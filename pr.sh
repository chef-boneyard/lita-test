#!/bin/sh

# git checkout -b sersut/

branch=$(cat /dev/urandom | LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
git checkout -b sersut/$branch
git add -A
git commit -m "test change."
git push origin sersut/$branch
hub pull-request -m "test change."
