#!/bin/bash
REPOSITORIES=(Warbud.Revit.Installer Warbud.Revit.Nugets Warbud.Revit.Client)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/Nairda015//$REPOSITORY.git
	 git clone $REPO_URL
	 cd $REPOSITORY && cd ..
done