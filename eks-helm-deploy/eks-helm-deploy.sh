#!/usr/bin/env bash
set -ueo pipefail

if [ "$TASK" == "deploy" ]; then
  params=("install" "$CHART_NAME" "./$CHART_NAME-*.tgz" "-n" "$NAMESPACE" "--set" "cluster=$CLUSTER,environment=$ENVIRONMENT" "--wait")
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
    params=("uninstall" "$CHART_NAME" "-n" "$NAMESPACE" "--wait")
    echo Running helm "${params[@]}"
    helm "${params[@]}"
    kubectl delete ns "$NAMESPACE"
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
