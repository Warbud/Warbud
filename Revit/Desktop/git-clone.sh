#!/bin/bash
REPOSITORIES=(Installer Nugets Ribbon)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/Warbud/$REPOSITORY.git
	 git clone $REPO_URL
	 cd $REPOSITORY && cd ..
done