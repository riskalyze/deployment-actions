#!/usr/bin/env bash
set -ueo pipefail

if [ "$TASK" == "deploy" ]; then
  params=("install" "-n" "$NAMESPACE" "--set cluster=$CLUSTER,environment=$ENVIRONMENT" "--wait" "$CHART_NAME" "$CHART_DIR")
  kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: $NAMESPACE
  labels:
    istio-injection: enabled
EOF
  echo Running helm "${params[@]}"
  helm install "${params[@]}"
elif [ "$TASK" == "destroy" ]; then
  if [[ "$ENVIRONMENT" =~ ^prod ]]; then
    echo "ERROR! Cannot destroy a production environment!!"
    exit 1
  else
    params=("uninstall" "-n" "$NAMESPACE" "$CHART_NAME")
    echo Running helm "${params[@]}"
    helm "${params[@]}"
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
