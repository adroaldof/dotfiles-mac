#!/bin/bash

function openChromeSecurityDisabled () {
  case "$(uname -s)" in
    Darwin)
      open -a Google\ Chrome --args --disable-web-security --user-data-dir
      ;;
    Linux)
      google-chrome --disable-web-security --user-data-dir &
      ;;
  esac
}

