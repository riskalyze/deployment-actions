# Changelog

## [1.1.0](https://github.com/byerobot/actions/compare/v1.0.1...v1.1.0) (2022-06-01)


### Features

* Add Codeartifact login ([78c4c87](https://github.com/byerobot/actions/commit/78c4c87608cfcfbfdf086a7caeb08fd2d1036ab5))
* Add Codeartifact login ([1f9b294](https://github.com/byerobot/actions/commit/1f9b2942b0a364faf7b74ab4f4d08532b4ecda21))
* Add ECR build-push action ([a9589a6](https://github.com/byerobot/actions/commit/a9589a692bb37615e06a3865ffedb5cedf6b225d))
* Add EKS deploy workflow ([51b4be0](https://github.com/byerobot/actions/commit/51b4be0c485e1fe41d1b9dac0acb9151ef348aee))
* **deployment-manager:** Add deployment-manager action ([5223ebf](https://github.com/byerobot/actions/commit/5223ebf5f6b15112068228a729921dce312dacd7))
* **deployment-manager:** Add deployment-manager action ([430921a](https://github.com/byerobot/actions/commit/430921a35f9cadafc7e50e6874f3498d3ca786e4))
* **deployment-manager:** Add deployment-manager action ([a458d80](https://github.com/byerobot/actions/commit/a458d80a9b046c5668af4d86fd3c3d64e6902ff0))
* **eks-deploy:** :sparkles: add twingate action ([4c8fec3](https://github.com/byerobot/actions/commit/4c8fec35e92da02eb23d15a2ea2b1cabb3fb3a0e))


### Bug Fixes

* :bug: pass env to kubectl step ([b4732de](https://github.com/byerobot/actions/commit/b4732de2c3cbb79b403408a421eb5bd3eb46fd17))
* Add helm-template composite action ([dae4075](https://github.com/byerobot/actions/commit/dae40758a0beb796eccc793b2c80e237d0b64c55))
* Add path input ([4dac187](https://github.com/byerobot/actions/commit/4dac187eb1ed7252c7de91b422e95193cffad8d0))
* Add step to create ECR repo if needed ([253f6cb](https://github.com/byerobot/actions/commit/253f6cba7536f73d9ea3b67bc240682853fce471))
* Don't create ECR repo (for now) ([13adeb8](https://github.com/byerobot/actions/commit/13adeb8d46803c1c4e31d22a6bf1d7bd14b006cb))
* Download manifests from artifacts ([eb5160a](https://github.com/byerobot/actions/commit/eb5160a15683ca7860be099c4bdf4852a3829f38))
* **ecr-build-push:** fix a bug in codeartifact auth ([1c66f92](https://github.com/byerobot/actions/commit/1c66f92c9792fdd03d05f6b86eb0907dd244408d))
* **ecr-build-push:** fix a bug in codeartifact auth ([9a2b21f](https://github.com/byerobot/actions/commit/9a2b21ff006672ebb99d79cfde64ee727c3cde70))
* **ecr-build-push:** fix a bug in codeartifact auth ([4f14332](https://github.com/byerobot/actions/commit/4f14332bc59c6ec3d74b1eedc586dc7e017fd006))
* **eks-deploy:** Remove checkout step from eks deploy ([7505114](https://github.com/byerobot/actions/commit/75051148eaefd2a1bc09bde53c7ef71f0862c3b4))
* Fix up the secret conditional ([4201837](https://github.com/byerobot/actions/commit/42018375064a9d64dff6de28c3b93fccd4176b26))
* Pass secret via inputs ([823603e](https://github.com/byerobot/actions/commit/823603e7c9fc048acbf7b42c17489253d679fc64))
* Remove dependency ([cf94413](https://github.com/byerobot/actions/commit/cf9441361bf14c3c449592f19a010f394fda6811))
* Use byerobot/create-ecr-repository-action ([078a188](https://github.com/byerobot/actions/commit/078a18895b016c4ef201af85a0ca6d54d405b5f1))


### Reverts

* Move CDK command into script ([59a638f](https://github.com/byerobot/actions/commit/59a638ffb030aa2ac53c4fbe92d34300e683e6a5))

### [1.0.1](https://github.com/byerobot/cdk-action/compare/v1.0.0...v1.0.1) (2022-05-27)


### Bug Fixes

* Resolve issue with clobbering payloads when setting the environment here ([46ff73a](https://github.com/byerobot/cdk-action/commit/46ff73a6382d940691f60534ccaab5774cbbd3be))
* Use chrnorm/deployment-status ([05331b6](https://github.com/byerobot/cdk-action/commit/05331b6c03f819eae994129b638cd23c5c3d68dc))

## 1.0.0 (2022-05-27)


### Bug Fixes

* Detect yarn/npm ([113eb8b](https://github.com/byerobot/cdk-action/commit/113eb8b320ac8c39c865f2e0cc1463c123b42315))
