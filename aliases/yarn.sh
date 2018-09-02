#!/bin/bash


# Yarn command
function y () {
  yarn $@
}


# Yarn start
function ys () {
  yarn start
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
  yarn add $@
}


# Yarn install dev
function yid () {
  yarn add -D $@
}
