#!/usr/bin/env bash
set -ueo pipefail

suffix=""
if [[ ! $DOCKERFILE_PATH == '.' ]]; then
  suffix="-$(basename "$DOCKERFILE_PATH")"
  suffix="${suffix//\./}"
fi

# Set the repo-name and dev-repo-name
if [[ $REPO_NAME != '' ]]; then
  name=$REPO_NAME
else
  name="app/${REPO/*\//}$suffix"
fi
echo "::set-output name=repo-name::$name"
echo "::set-output name=dev-repo-name::${name/app/dev}"

# Check if a dev stage is present
if grep -iq "as dev" "$DOCKERFILE_PATH"/Dockerfile; then
  echo "::set-output name=dev-stage::true"
else
  echo "::set-output name=dev-stage::false"
fi

# Check if a build is necessary
tags=$(aws ecr list-images \
  --repository-name "$name" \
  --query "imageIds[?imageTag==\"$SHA\"].imageTag" \
  --output text)
dev_tags=$(aws ecr list-images \
  --repository-name "$name" \
  --query "imageIds[?imageTag==\"$SHA\"].imageTag" \
  --output text)
if [[ $tags != '' ]]; then
  echo "::set-output name=needs-build::false"
else
  echo "::set-output name=needs-build::true"
fi
if [[ $dev_tags != '' ]]; then
  echo "::set-output name=needs-dev-build::false"
else
  echo "::set-output name=needs-dev-build::true"
fi
