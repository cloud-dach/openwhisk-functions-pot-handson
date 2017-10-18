#!/bin/bash
# Information steps:
# 1) chmod u+x git-pull.sh
# 2) ./git-pull.sh

remote_path="https://git.ng.bluemix.net/thomas.suedbroecker.2/carDiagnostic.git"
branch="master"

echo "--> Pull"
cd ..
pwd
git pull $remote_path $branch
