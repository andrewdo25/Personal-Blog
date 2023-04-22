#!/bin/sh
# If a command fails then the deploy stops
set -e

# Build the project
printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"
hugo -D --buildFuture

echo ""
read -p "Do you want to commit an amend without editing? (y/n) " amend

# Commit and push to GitHub Page repository
printf "\033[0;32mGo to /public...\033[0m\n"
cd public
git add .

if [ "$amend" = "y" ]; then
	echo "\033[0;32mCommitting changes...\033[0m\n"
	git commit --amend --no-edit
	git push -f
else
	echo ""
	read -p "Enter your commit message: " msg
	echo "\033[0;32mCommitting changes...\033[0m\n"
	git commit -m "$msg"
	git push
fi
echo ""

# Commit and push to site repository
printf "\033[0;32mGo to root...\033[0m\n"
cd ..
git add .

if [ "$amend" = "y" ]; then
	echo "\033[0;32mCommitting changes...\033[0m\n"
	git commit --amend --no-edit
	git push -f
else
	echo ""
	read -p "Enter your commit message: " msg
	echo "\033[0;32mCommitting changes...\033[0m\n"
	git commit -m "$msg"
	git push
fi
echo ""

printf "\033[0;32mChanges are commited and push successfully! Go to https://andoDsAI.github.io to see.\033[0m\n"
printf "\033[0;32mFinished!\033[0m\n"
