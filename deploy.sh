#!/bin/bash
#
# Deploy a hugo generated site!
# @truneski -2016

set -e

# Update local source with remote
echo -e "\033[0;32mUpdating local copy of project master..\033[0m"
git pull origin master

# Add local changes
echo -e "\033[0;32mStaging source update for Github...\033[0m"
git add -A
git commit -m 'Updating Blog'

echo -e "\033[0;32mDeploying source to Github...\033[0m"
git push origin master

# Build the project.
echo -e "\033[0;32mBuilding the project...\033[0m"
hugo
