#!/bin/bash
#
# Deploy a hugo generated site!
# @truneski -2016

set -e
# Build the project.
echo -e "\033[0;32mBuilding the project...\033[0m"
cd /home/ubuntu/my-website 
hugo
echo -e "\033[0;32mUpdating Blog Source to Github...\033[0m"
git add -A
git commit -m 'Updating Blog Source'
git push origin master
hugo -d /home/ubuntu/truneski.github.io/

# Update local source with remote
cd /home/ubuntu/truneski.github.io
echo -e "\033[0;32mUpdating local copy of project master..\033[0m"
git pull origin master

# Add local changes
echo -e "\033[0;32mStaging source update for Github...\033[0m"
git add -A
git commit -m 'Updating Blog'

echo -e "\033[0;32mDeploying source to Github...\033[0m"
git push origin master


