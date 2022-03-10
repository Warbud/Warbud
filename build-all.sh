#!/bin/sh
warbudHome="C:/WEBSITES/Warbud"
warbudRevitServer="$warbudHome/Warbud.Revit/Warbud.Revit.Server"
cd $warbudHome/Warbud.Users/Warbud.Users.Api
dotnet publish -c Release
cd $warbudHome/Warbud.ReverseProxy/Warbud.ReverseProxy
dotnet publish -c Release
cd $warbudHome/Warbud.Mail
dotnet publish -c Release
cd $warbudRevitServer/Warbud.Revit.Update
dotnet publish -c Release
cd $warbudRevitServer/Warbud.Revit.Statistics
dotnet publish -c Release
cd $warbudRevitServer/Warbud.Revit.GQL/RevitRibbon.API
dotnet publish -c Release