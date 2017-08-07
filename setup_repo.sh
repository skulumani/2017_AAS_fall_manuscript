#!/bin/bash

# add the correct remote repositories
git_repo="git@github.com:skulumani/2017_AAS_fall_manuscript.git"
bb_repo="git@bitbucket.org:shankarkulumani/2017_aas_fall_manuscript.git"
fdcl_repo="git@github.com:fdcl-gwu/2017_AAS_fall_manuscript.git"

printf "Setting the origin remote to point to Github and Bitbucket:\n\n"
printf "Github: $git_repo\n"
printf "Bitbucket: $bb_repo\n\n"

git remote set-url origin --push --add $bb_repo
git remote set-url origin --push --add $git_repo
git remote add fdcl ${fdcl_repo}

printf "Finished! The new remotes are listed.\n"
printf "\n"

git remote -v
