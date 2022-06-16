# deployment-actions

A collection of GitHub actions, primarily for deploying with [CDK](https://aws.amazon.com/cdk/) and Helm.

## Overview

### `.github/workflows/deployment-handler.yml`

A reusable workflow that detects the presence of CDK, Docker, and Helm, and builds/deploys accordingly.

### `cdk-deploy`

A composite action that installs node dependencies, authenticates with AWS, and runs `cdk`.

### `eks-helm-deploy`

A composite action that downloads a packaged helm chart from GitHub artifacts and deploys them to an EKS cluster.

### `helm-package`

A composite action that packages a helm chart and uploads the manifests to a GitHub artifact.