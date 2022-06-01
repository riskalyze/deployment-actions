# actions

A collection of GitHub actions, primarily for deploying with [CDK](https://aws.amazon.com/cdk/).

## Overview

### `.github/workflows/deployment-handler.yml`

A reusable workflow that detects the presence of CDK, Docker, and Helm, and builds/deploys accordingly.

### `cdk-deploy`

A composite action that installs node dependencies, authenticates with AWS, and runs `cdk`.

### `ecr-build-push`

A composite action that creates an ECR repo if needed, then builds and pushes a Docker image to ECR.

### `eks-deploy`

A composite action that downloads manifests from GitHub artifacts and deploys them to an EKS cluster.

### `helm-template`

A composite action that runs `helm template` in a folder and uploads the manifests to a GitHub artifact.