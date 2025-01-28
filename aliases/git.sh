#!/bin/bash

# Git clear merged branchs
function cleanMergedBranchs () {
  git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | xargs -n 1 git branch -d
}

