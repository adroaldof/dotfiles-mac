#!/bin/bash


# Remove node modules from subfolders
function cleanNodeModulesFromSubfolders () {
  echo "find . -name "node_modules" -type d -prune -exec rm -rf '{}' +"
  find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
}

