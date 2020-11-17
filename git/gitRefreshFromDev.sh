#!/bin/bash

prevBranch=`git rev-parse --abbrev-ref HEAD`
git checkout develop
git rev-parse --abbrev-ref HEAD
git pull
git checkout $prevBranch
git merge develop
