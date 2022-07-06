#!/usr/bin/env bash
set -ueo pipefail

echo "Running terraform init..."
terraform init

echo "Selecting workspace ${REPO/*\//}-${ENVIRONMENT}."
terraform workspace select ${REPO/*\//}-${ENVIRONMENT}

if [ "$TASK" == "apply" ]; then
  echo "Running terraform apply..."
  terraform apply -var-file=$ENVIRONMENT.tfvars -auto-approve -input=false
elif [ "$TASK" == "plan" ]; then
  echo "Running terraform plan..."
  terraform plan -no-color -input=false -var-file=$ENVIRONMENT.tfvars -out=tfplan
elif [ "$TASK" == "destroy" ]; then
  if [[ "$ENVIRONMENT" =~ ^prod ]]; then
    echo "ERROR! Cannot destroy a production environment!!"
    exit 1
  else
    echo "Running terraform destroy..."
    terraform apply -destroy -var-file=$ENVIRONMENT.tfvars -auto-approve -input=false -lock-timeout=30s tfplan
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi
