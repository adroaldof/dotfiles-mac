#!/bin/bash

GREEN='\033[1;32m'
CYAN='\033[1;36m'
NC='\033[0m'

# Run Redux dev tools
function reduxDevTools () {
  echo "(${GREEN}rdt${NC}) ${CYAN}open "rndebugger://set-debugger-loc?host=localhost&port=8081"${NC}"
  open "rndebugger://set-debugger-loc?host=localhost&port=8081"
}


