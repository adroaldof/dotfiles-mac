#!/bin/bash

# npm command
function n() {
  npm i $@
}

# npm add package and types
function nit() {
  npm i -s $@ && npm i -D @types/$@
}

# npm add command
function ni() {
  npm i -s $@
}

# npm add dev command
function nid() {
  npm i --only=dev $@
}

# npm remove
function nrm() {
  npm uninstall $@
}

# npm start
function ns() {
  npm start $@
}

# npm dev
function nd() {
  npm run dev $@
}

# npm dev debug mode
function ndd() {
  npm run dev:debug $@
}

# npm run
function nb() {
  npm run build
}

# npm run
function nr() {
  npm run $@
}

# npm lint
function nl() {
  npm run lint
}

# npm lint
function nlw() {
  npm run lint:watch
}

# npm run test
function nt() {
  npm test $@
}

# npm run test watch
function ntw() {
  npm run test-watch
}

# npm run test coverage
function nc() {
  npm run coverage
}

# npm run test coverage watch
function ncw() {
  npm run coverage:watch
}
