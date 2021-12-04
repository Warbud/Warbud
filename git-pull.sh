#!/bin/bash
REPOSITORIES=(Warbud.Users Warbud.ReverseProxy Warbud.Shared)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Updating the repository: $REPOSITORY
	 echo ========================================================
	 cd $REPOSITORY && git checkout develop && git pull && git checkout master && git pull && cd ..
done