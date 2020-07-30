# Git commands

### update last commit
> git commit --amend

### update author
> git commit --amend --author="luizfel <luizfelipe.silva@dunnhumby.com>"

> git commit --amend --author="Luiz Felipe Machado da Silva <lfmachadodasilva@gmail.com>"

> git commit --author="Luiz Felipe Machado da Silva <lfmachadodasilva@gmail.com>"

### delete branch
> git branch -D branchName

### delete last commit
> git reset --soft head~1

### delete all branches
> git branch | grep -v \* | xargs git branch -D

### rebase
> git rebase -ip HEAD~2

### force push
> git push -f

### remove ssl
> git -c http.sslVerify=false 
