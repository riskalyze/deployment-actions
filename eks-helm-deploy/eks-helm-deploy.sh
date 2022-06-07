#!/usr/bin/env bash
set -ueo pipefail

if [ "$TASK" == "deploy" ]; then
  params=(
    "upgrade" "$CHART_NAME" "$CHART_NAME.tgz"
    "--install"
    "--create-namespace"
    "--force"
    "--namespace" "$NAMESPACE"
    "--render-subchart-notes"
    "--set" "cluster=$CLUSTER,environment=$ENVIRONMENT,image.tag=$TAG"
  )

  if [ "$EXTRA_VALUES" != "" ]; then
    while IFS= read -r value; do
        params+=("--set" "$value")
    done <<< "$EXTRA_VALUES"
  fi

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
    )
    echo Running helm "${params[@]}"
    helm "${params[@]}"
    if [ "$EVENT_TYPE" == "destroy" ]; then
      echo "Deleting namespace $NAMESPACE..."
      kubectl delete ns "$NAMESPACE" || true
    fi
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
