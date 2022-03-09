#!/bin/bash
REPOSITORIES=(Server Naming)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/Warbud/$REPOSITORY.git
	 git clone $REPO_URL
	 cd $REPOSITORY && cd ..
done