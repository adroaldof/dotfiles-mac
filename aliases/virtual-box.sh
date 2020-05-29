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
