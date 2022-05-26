# cdk-action

A GitHub action for deploying with [CDK](https://aws.amazon.com/cdk/)

## Overview

This repo provides a reusable workflow ([deployment-handler.yml](./.github/workflows/deployment-handler.yml))
that rolls up several common CDK deployment steps:

- Checkout repo
- Set up node with caching
- Assume an AWS role
- Install dependencies
- Run CDK deploy or destroy
- Upload outputs as an artifact
- Set the deployment status based on the deployment outcome, with an optional URL for the environment
- Clean up old deployments/environments upon destroy

This workflow is recommended to be used in one of two manners:

### On `deployment` events

If you have some way of
creating [GitHub deployments](https://docs.github.com/en/rest/deployments/deployments#about-the-deployments-api),
then you can trigger this action when deployments are created:

```yaml
on: deployment
name: Deployment Handler
jobs:
  deploy:
    name: Handle deployment event
    uses: byerobot/cdk-action/.github/workflows/deployment-handler.yml@main
    with:
      deployment_id: '${{ github.event.deployment.id }}'
      environment: '${{ github.event.deployment.environment }}'
      region: '${{ github.event.deployment.payload.account.region }}'
      role_arn: '${{ github.event.deployment.payload.account.role_arn }}'
      task: '${{ github.event.deployment.task }}'
```

### On `push` events

This is a common workflow if you want to deploy to Prod on push to master, for example:

```yaml
on:
  workflow_dispatch:
  push:
    branches:
    - main

jobs:
  deploy:
    name: Deploy to production
    uses: byerobot/cdk-action/.github/workflows/deployment-handler.yml@main
    with:
      task: deploy
      environment: production
      namespace: production
      region: us-east-2
      role_arn: arn:aws:iam::000000000000:role/githubActionsRole
      stacks: my-stack
```

### Destroying environments

To destroy an environment, use `task: destroy` when calling this workflow. **IMPORTANT NOTE**: as a safeguard, destroy
actions on any environment name starting with `prod` will fail.

### Setting environment variables

Some CDK stacks may rely on environment variables to influence how resources are created. This workflow lets you pass an
optional comma-separated list of environment variables to use:

```yaml
jobs:
  deploy:
    uses: byerobot/cdk-action/.github/workflows/deployment-handler.yml@main
    with:
      env_vars: ACCOUNT_NAME=prod,NAMESPACE=foo
```

These will be parsed and set in the environment for the CDK deploy/destroy step.
