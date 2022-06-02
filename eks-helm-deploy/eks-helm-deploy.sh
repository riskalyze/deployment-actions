#!/usr/bin/env bash
set -ueo pipefail

if [ "$TASK" == "deploy" ]; then
  echo "Creating namespace $NAMESPACE if it doesn't exist..."
    kubectl apply -f - <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: $NAMESPACE
  labels:
    istio-injection: enabled
EOF

  params=(
    "upgrade" "$CHART_NAME" "$CHART_NAME.tgz"
    "--install"
    "--namespace" "$NAMESPACE"
    "--set" "cluster=$CLUSTER,environment=$ENVIRONMENT"
    "--set" "image.tag=$TAG"
    "--wait"
  )
  echo Running helm "${params[@]}"
  helm "${params[@]}"
elif [ "$TASK" == "destroy" ]; then
  if [[ "$ENVIRONMENT" =~ ^prod ]]; then
    echo "ERROR! Cannot destroy a production environment!!"
    exit 1
  else
    params=(
      "uninstall" "$CHART_NAME"
      "--namespace" "$NAMESPACE"
      "--wait"
    )
    echo Running helm "${params[@]}"
    helm "${params[@]}"
    kubectl delete ns "$NAMESPACE"
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
