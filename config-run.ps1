Write-Host ">>>> configure: visual studio code"
& code --install-extension ms-vscode.csharp
& code --install-extension donjayamanne.githistory
& code --install-extension peterjausovec.vscode-docker
& code --install-extension msjsdiag.debugger-for-chrome
& code --install-extension mccarter.start-git-bash

Write-Host ">>>> configure: git"
& git config --global user.name "Luiz Felipe Machado da Silva"
& git config --global user.email "lfmachadodasilva@gmail.com"

& mkdir c:\\luizfelipe
& cd c:\\luizfelipe

Write-Host ">>>> install: myexpenses"
& git clone https://github.com/lfmachadodasilva/MyExpenses.git

Write-Host ">>>> install: myexpenses frontend"
& git clone https://github.com/lfmachadodasilva/myexpenses-frontend.git

Write-Host ">>>> install: myexpenses backend"
& git clone https://github.com/lfmachadodasilva/myexpenses-backend.git

Write-Host ">>>> install: config"
& git clone https://github.com/lfmachadodasilva/config.git
