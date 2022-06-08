#!/usr/bin/env bash
set -ueo pipefail

if [ "$TASK" == "deploy" ]; then
  echo "Ensuring namespace $NAMESPACE exists..."
  cat << EOF | kubectl apply -f -
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
    if kubectl get ns "$NAMESPACE"; then
      params=(
        "uninstall" "$CHART_NAME"
        "--namespace" "$NAMESPACE"
      )
      echo Running helm "${params[@]}"
      helm "${params[@]}" || true

      if [ "$EVENT_TYPE" == "destroy" ]; then
        echo "Deleting namespace $NAMESPACE..."
        kubectl delete ns "$NAMESPACE" || true
      fi
    else
      echo "Failed to find $NAMESPACE. It was probably deleted by another deployment action."
    fi
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
