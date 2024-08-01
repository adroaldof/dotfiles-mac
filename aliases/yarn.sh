#!/bin/bash


# Yarn command
function y () {
  yarn $@
}


# Yarn add command
function ya () {
  yarn add $@
}


# Yarn add dev command
function yad () {
  yarn add --dev $@
}


# Yarn remove
function yrm () {
  yarn remove $@
}

# Yarn build
function yb () {
  yarn build
}

# Yarn start
function ys () {
  yarn start
}


# Yarn dev
function yd () {
  yarn dev
}


# Yarn run
function yr () {
  yarn run $@
}


# Yarn lint
function yl () {
  yarn lint
}


# Yarn lint
function ylw () {
  yarn lint:watch
}


# Yarn run test
function yt () {
  yarn test $@
}


# Yarn run test watch
function ytw () {
  yarn test-watch
}

# Yarn run test watch
function ytwv () {
  yarn test-watch-verbose
}

# Yarn run test coverage
function yc () {
  yarn coverage
}


# Yarn run test coverage watch
function ycw () {
  yarn coverage-watch
}


# Yarn install
function yi () {
  yarn add $@
}


# Yarn install dev
function yid () {
  yarn add -D $@
}


# Yarn dsa
function ydsa () {
  yarn dsa $@
}


# Yarn dtw
function ydtw () {
  yarn dtw-e2e $@
}
