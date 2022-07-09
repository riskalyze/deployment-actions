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
terraform workspace select "${WORKSPACE}"

case $TASK in
  apply)
    args=("apply" "-no-color" "-input=false" "-auto-approve" "$ENVIRONMENT-$WORKSPACE-tfplan")
    ;;
  plan | plan-destroy)
    args=("plan" "-no-color" "-out=$ENVIRONMENT-$WORKSPACE-tfplan" "-input=false" "-var-file=$ENVIRONMENT.tfvars")
    if [ "$TASK" == "plan-destroy" ]; then
      args+=("-destroy")
    fi
    if [ -f "$ENVIRONMENT.secret.tfvars" ]; then
      echo "Found SOPS-encrypted tfvars; decrypting."
      sops -i -d "$ENVIRONMENT.secret.tfvars"
      args+=("-var-file=$ENVIRONMENT.secret.tfvars")
    fi
    ;;
  destroy)
    if [[ "$ENVIRONMENT" =~ ^prod ]]; then
      echo "ERROR! Cannot destroy a production environment!!"
      exit 1
    fi
    args=("apply" "-destroy" "-input=false" "-auto-approve" "-lock-timeout=30s" "$ENVIRONMENT-$WORKSPACE-tfplan")
    ;;
  *)
    echo "Unknown task $TASK!"
    exit 1
esac

echo Running terraform "${args[@]}"
terraform "${args[@]}"
