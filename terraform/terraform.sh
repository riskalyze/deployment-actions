#!/usr/bin/env bash
set -ueo pipefail

if [ "$TASK" == "apply" ]; then
  echo "Running terraform apply..."
  terraform apply -auto-approve -input=false
elif [ "$TASK" == "plan" ]; then
  echo "Running terraform plan..."
  terraform plan -no-color -input=false -out=plan.out
elif [ "$TASK" == "destroy" ]; then
  if [[ "$ENVIRONMENT" =~ ^prod ]]; then
    echo "ERROR! Cannot destroy a production environment!!"
    exit 1
  else
    echo "Running terraform destroy..."
    terraform apply -destroy -auto-approve -input=false -lock-timeout=30s
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
