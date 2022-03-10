#!/bin/sh
warbudHome="C:/WEBSITES/Warbud"
warbudRevitServer="$warbudHome/Revit/Server"

cd $warbudHome/Users
sh build.sh

cd $warbudHome/ReverseProxy
sh build.sh

cd $warbudHome/Mail
sh build.sh

cd $warbudHome/Revit/Naming
sh build.sh

cd $warbudRevitServer/Warbud.Revit.Update
sh build.sh

cd $warbudRevitServer/Warbud.Revit.Statistics
dotnet publish -c Release -o $warbudHome/Builds/RevitStats

cd $warbudRevitServer/Warbud.Revit.GQL
dotnet publish -c Release -o $warbudHome/Builds/GQL