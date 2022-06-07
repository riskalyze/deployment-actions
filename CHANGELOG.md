# Changelog

## [2.0.1](https://github.com/byerobot/actions/compare/v2.0.0...v2.0.1) (2022-06-07)


### Bug Fixes

* Add minor tag workflow ([224896c](https://github.com/byerobot/actions/commit/224896c565fdfb19bcb7537d0261074265f756ad))

## [2.0.0](https://github.com/byerobot/actions/compare/v1.1.0...v2.0.0) (2022-06-06)


### ⚠ BREAKING CHANGES

* Must pass a cluster input

### Features

* Add Helm ECR dependency support ([4997be8](https://github.com/byerobot/actions/commit/4997be8e1ee9794cadc8852df16d2e7d48347a33))
* Add Helm ECR dependency support ([739eb69](https://github.com/byerobot/actions/commit/739eb69a6737144ec19386e8e2ecd738b6a1d6ca))
* Add Helm ECR dependency support ([a6f365b](https://github.com/byerobot/actions/commit/a6f365b46095b067a47b1b1bc0c9c8e245b032fa))
* Allow passing additional values to Helm ([71294d6](https://github.com/byerobot/actions/commit/71294d6692476c0eca337d3c5e5b6234a305f1e2))
* Detect paths for helm, cdk, and docker ([0ccf591](https://github.com/byerobot/actions/commit/0ccf591de26c8939df6b70b12f0a7a81223293b9))
* Package helm chart then deploy in separate step ([ba62e87](https://github.com/byerobot/actions/commit/ba62e87390209ce60784dfa2f5d6debf1d6acb93))
* Specify image.tag as SHA ([22484bf](https://github.com/byerobot/actions/commit/22484bfd8f4891ea3386df2f17ab68b75a2f75b6))
* Support assuming separate Codeartifact role ([6166491](https://github.com/byerobot/actions/commit/616649146416bd5a1dcfe1d94c1f72a2c166cc73))


### Bug Fixes

* Create namespace if it doesn't exist ([fa5a0b8](https://github.com/byerobot/actions/commit/fa5a0b88f5e9ac9e1a6119e45f5f16f2274b59f5))
* Create namespace if it doesn't exist ([add3486](https://github.com/byerobot/actions/commit/add348634906ca262b96adad0f065d4086142653))
* Don't wait for helm operations ([dac95d7](https://github.com/byerobot/actions/commit/dac95d78fdcbf1f0f1181c76aae0c1f3ba81af80))
* Require cluster input ([41ee8ff](https://github.com/byerobot/actions/commit/41ee8ffc5448afdb8a1d45e15eee4f0f4d62215a))
* set if: always() for eks-helm-deploy ([5693d02](https://github.com/byerobot/actions/commit/5693d02e82a31d699a1c9fe71efb73ebf10c8097))
* ugly conditional for step success validation ([f7d2da9](https://github.com/byerobot/actions/commit/f7d2da958dcb8f6e107070a50c4c711936bd694a))
* Use correct path to .npmrc ([abcbb1c](https://github.com/byerobot/actions/commit/abcbb1c79003d5fbebdcccbdf2514b98c45ac780))
* Use helm to install/uninstall resources ([5ad37a9](https://github.com/byerobot/actions/commit/5ad37a9f1356ec68f98f0959ffdea5ad8e0c7bd5))


### Performance Improvements

* Only build Docker image on deploy tasks ([62aa0e3](https://github.com/byerobot/actions/commit/62aa0e3a386c1887643d9ecdcf15f3e9e8d46ca7))

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
