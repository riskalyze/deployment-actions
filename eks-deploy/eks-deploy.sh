#!/usr/bin/env bash
set -ueo pipefail

params=("-R" "-f" ".")
if [ "$NAMESPACE" != "" ]; then
  params+=("--namespace" "$NAMESPACE")
fi
if [ "$TASK" == "deploy" ]; then
  echo "Running kubectl apply..."
  kubectl apply "${params[@]}"
elif [ "$TASK" == "destroy" ]; then
  if [[ "$ENVIRONMENT" =~ ^prod ]]; then
    echo "ERROR! Cannot destroy a production environment!!"
    exit 1
  else
    echo "Running kubectl destroy..."
    kubectl delete "${params[@]}"
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
