#!/bin/bash
REPOSITORIES=(Warbud.Users Warbud.ReverseProxy Warbud.Shared)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/Nairda015//$REPOSITORY.git
	 git clone $REPO_URL
	 cd $REPOSITORY && cd ..
done