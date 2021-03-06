#!/usr/bin/env bash
set -ueo pipefail

if [ "$ENV_VARS" != "" ]; then
  IFS=','
  read -r -a vars <<< "$ENV_VARS"
  for val in "${vars[@]}"; do
    printf "%s\n" "$val"
    export "${val?}"
  done
fi
if [ "$STACKS" != "" ]; then
  stack_arg=$STACKS
else
  stack_arg="--all"
fi
if [ "$TASK" == "deploy" ]; then
  echo "Running cdk deploy..."
  ./node_modules/.bin/cdk deploy --progress events --require-approval never --outputs-file cdk.out.json $stack_arg
elif [ "$TASK" == "destroy" ]; then
  if [[ "$ENVIRONMENT" =~ ^prod ]]; then
    echo "ERROR! Cannot destroy a production environment!!"
    exit 1
  else
    echo "Running cdk destroy..."
    ./node_modules/.bin/cdk destroy --progress events --force $stack_arg
  fi
else
  echo "ERROR! Unrecognized action $TASK."
fi