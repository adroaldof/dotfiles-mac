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


# Yarn lint
function yl () {
  yarn lint
}


# Yarn run test watch
function ytw () {
  yarn test:watch
}


# Yarn run test coverage
function yc () {
  yarn coverage
}


# Yarn run test coverage watch
function ycw () {
  yarn coverage:watch
}


# Yarn install
function yi () {
  yarn add ${1}
}


# Yarn install dev
function yid () {
  yarn add -D ${1}
}
