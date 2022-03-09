#!/bin/bash
REPOSITORIES=(Users ReverseProxy Shared Mail)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/Warbud/$REPOSITORY.git
	 git clone $REPO_URL
	 cd $REPOSITORY && cd ..
done

cd Revit
sh git-clone.sh
cd Desktop
sh git-clone.sh