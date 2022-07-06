#!/usr/bin/env bash
set -ueo pipefail

echo "Running terraform init..."
terraform init \
  -backend-config="bucket=infra-tf-state-${ENVIRONMENT}-${REGION}.riskalyze.com" \
  -backend-config="region=${REGION}" \
  -backend-config="dynamodb_table=tf-remote-state-lock" \
  -backend-config="key=terraform.tfstate" \
  -backend-config="encrypt=true"

echo "Selecting workspace ${WORKSPACE}."
terraform workspace select ${WORKSPACE}

args=("-input=false" "-var-file=$ENVIRONMENT.tfvars" )

if [ -f "$ENVIRONMENT.secret.tfvars" ]; then
  echo "Found SOPS-encrypted tfvars; decrypting."
  sops -i -d "$ENVIRONMENT.secret.tfvars"
  args+=("-var-file=$ENVIRONMENT.secret.tfvars")
fi

if [ "$TASK" == "apply" ]; then
  args=("apply" "${args[@]}" "-auto-approve" "tfplan")
elif [ "$TASK" == "plan" ]; then
  args=("plan" "-out=tfplan" "${args[@]}")
elif [ "$TASK" == "destroy" ]; then
  if [[ "$ENVIRONMENT" =~ ^prod ]]; then
    echo "ERROR! Cannot destroy a production environment!!"
    exit 1
  else
    args=("apply" "-destroy" "${args[@]}" "-auto-approve" "-lock-timeout=30s")
  fi
else
  echo "ERROR! Unrecognized action $TASK."
  exit 1
fi

echo "Running terraform ${args[@]}..."
terraform "${args[@]}"
