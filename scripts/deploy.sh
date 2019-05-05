#!/bin/bash

if ! git diff --name-only |grep -v bookindex.html ;
then
    echo "Do not update"
    exit 0
fi
echo "Update because there is a difference"
git add -A current
git commit -m "by Travis CI (JOB $TRAVIS_JOB_NUMBER) [skip ci]"
git push ssh://git@github.com/noborus/noborus.github.io.git master:master
