#!/bin/bash

# Yarn command
function listKubernetsEnvs () {
  echo "* NAME                    ${NAME}"
  echo "* KOPS_STATE_STORE        ${KOPS_STATE_STORE}"
  echo "* AWS_ACCESS_KEY_ID       ${AWS_ACCESS_KEY_ID}"
  echo "* AWS_PROFILE             ${AWS_PROFILE}"
  echo "* AWS_SECRET_ACCESS_KEY   ${AWS_SECRET_ACCESS_KEY}"
  echo "* AWS_DEFAULT_REGION      ${AWS_DEFAULT_REGION}"
  echo "* AWS_AVAILABILITY_ZONES  ${AWS_AVAILABILITY_ZONES}"
}

