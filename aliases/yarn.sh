#!/bin/bash


# Yarn command
function y () {
  yarn ${1}
}


# Yarn start
function ys () {
  yarn start
}


# Yarn run
function yr () {
  yarn run ${1}
}


# Yarn run test
function yt () {
  yarn test ${1}
}


# Yarn runt test watch
function ytw () {
  yarn run dev:test
}


# Yarn install
function yi () {
  yarn install ${1}
}
