@echo off

set currentDate=%date%
set currentTime=%time%

set branchName=backup-%currentDate%-%currentTime%
set branchName=%branchName:/=-%
set branchName=%branchName::=-%
set branchName=%branchName: =-%

git add .
git commit -m "Automated Save Backup Commit - %currentDate% %currentTime%"

git checkout -b %branchName%
git push origin %branchName%

git checkout main
git merge %branchName%

git push
