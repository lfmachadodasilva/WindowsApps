# Run this first as admin: set-executionpolicy remotesigned

if (Get-Command choco.exe -ErrorAction SilentlyContinue) { } 
else {
    Write-Host ">>>>download and install chocolatey"
    & Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

Write-Host ">>>> enable auto confirmation"
& choco feature enable -n allowGlobalConfirmation

Write-Host ">>>> install: google chrome"
& choco upgrade googlechrome

Write-Host ">>>> install: firefox"
& choco upgrade firefox

Write-Host ">>>> install: git"
& choco upgrade git.install

Write-Host ">>>> install: python"
& choco upgrade python3

Write-Host ">>>> configure: github"
& choco upgrade github-desktop

Write-Host ">>>> install: dotnet core"
& choco upgrade dotnetcore

Write-Host ">>>> install: visual studio code"
& choco upgrade visualstudiocode

Write-Host ">>>> install: visual studio 2017 community"
#& choco install visualstudio2017community
& choco upgrade visualstudio2017community --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

Write-Host ">>>> install: sql server 2017"
#& choco upgrade sql-server-2017

Write-Host ">>>> install: nodejs"
& choco upgrade nodejs

Write-Host ">>>> install: opencover"
#& choco upgrade opencover

Write-Host ">>>> install: cmder"
& choco upgrade cmder

Write-Host ">>>> install: postman"
& choco upgrade postman

Write-Host ">>>> install: pgadmin"
& choco upgrade pgadmin4

Write-Host ">>>> install: docker"
& choco upgrade docker

Write-Host ">>>> install: gimp"
& choco upgrade gimp

Write-Host ">>>> install: skype"
#& choco upgrade skype
