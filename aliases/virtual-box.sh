#!/bin/bash

function vbls() {
  echo "VBoxManage list vms"
  VBoxManage list vms
}

function vbstart() {
  echo "VBoxManage startvm $@ --type headless"
  VBoxManage startvm $@ --type headless
}

function vbstop() {
  echo "VBoxManage controlvm $@ poweroff --type headless"
  VBoxManage controlvm $@ poweroff --type headless
}

function vbbridgeip() {
  echo "VBoxManage guestproperty enumerate '$@' | grep -i ip | awk '/value:/{print $4}' | sed 's/,//g'"
  VBoxManage guestproperty enumerate $@ | grep -i ip | awk '/value:/{print $4}' | sed 's/,//g'
}
