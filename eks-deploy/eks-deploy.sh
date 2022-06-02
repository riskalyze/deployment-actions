#!/usr/bin/env bash
set -ueo pipefail

params=("-R" "-f" ".")
if [ "$NAMESPACE" != "" ]; then
  params+=("--namespace" "$NAMESPACE")
  kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: $NAMESPACE
  labels:
    istio-injection: enabled
EOF
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
