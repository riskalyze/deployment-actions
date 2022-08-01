# Changelog

## [3.2.8](https://github.com/riskalyze/deployment-actions/compare/v3.2.7...v3.2.8) (2022-08-01)


### Bug Fixes

* **deployment-handler:** Use latest eks-helm-deploy action ([1792297](https://github.com/riskalyze/deployment-actions/commit/1792297f80ef2d30c4f383d660f55d33bc673309))

## [3.2.7](https://github.com/riskalyze/deployment-actions/compare/v3.2.6...v3.2.7) (2022-07-29)


### Bug Fixes

* **eks-helm-deploy:** Set up docker hub authentication for new namespaces ([8a65d4a](https://github.com/riskalyze/deployment-actions/commit/8a65d4a56d0fb28239c8b326705bb17b4eb3b245))

## [3.2.6](https://github.com/riskalyze/deployment-actions/compare/v3.2.5...v3.2.6) (2022-07-13)


### Bug Fixes

* **infracost:** Fix passing of vars in infracost module ([6a290be](https://github.com/riskalyze/deployment-actions/commit/6a290be448533b9a29ea9956c2bb53397e7ab4ff))

## [3.2.5](https://github.com/riskalyze/deployment-actions/compare/v3.2.4...v3.2.5) (2022-07-13)


### Bug Fixes

* **terraform:** Fix a bug with terraform action not using secrets ([6b62258](https://github.com/riskalyze/deployment-actions/commit/6b62258b18826f08878671e04acca4d6536e0c36))

## [3.2.4](https://github.com/riskalyze/deployment-actions/compare/v3.2.3...v3.2.4) (2022-07-13)


### Bug Fixes

* Move tfvars into environments folder ([e31e691](https://github.com/riskalyze/deployment-actions/commit/e31e691ab64d1e753724d82cf545a928baf6d300))

## [3.2.3](https://github.com/riskalyze/deployment-actions/compare/v3.2.2...v3.2.3) (2022-07-09)


### Bug Fixes

* **terraform:** Uniquely named artifacts per env/workspace ([95dbaca](https://github.com/riskalyze/deployment-actions/commit/95dbaca94c9e6164e8249630d7782f3d12f83a8f))

## [3.2.2](https://github.com/riskalyze/deployment-actions/compare/v3.2.1...v3.2.2) (2022-07-09)


### Bug Fixes

* Nicer formatting of output ([4573218](https://github.com/riskalyze/deployment-actions/commit/45732182022ed41afad66501856646279fd8e477))

## [3.2.1](https://github.com/riskalyze/deployment-actions/compare/v3.2.0...v3.2.1) (2022-07-08)


### Bug Fixes

* Better error handling ([d7c6a47](https://github.com/riskalyze/deployment-actions/commit/d7c6a4767e7a2b09b0bd26067422024559792394))

## [3.2.0](https://github.com/riskalyze/deployment-actions/compare/v3.1.0...v3.2.0) (2022-07-08)


### Features

* Add infracost action ([63d0a7f](https://github.com/riskalyze/deployment-actions/commit/63d0a7fca3aac881e220842753da9cbe793cae8b))


### Bug Fixes

* **terraform:** Cd to workdir ([89308ac](https://github.com/riskalyze/deployment-actions/commit/89308ac22b47cf6557c12d6eeb5301cdd852b469))
* **terraform:** Pass in backend config ([d6485bc](https://github.com/riskalyze/deployment-actions/commit/d6485bcea7064e2a69c3ed71f4239a0015138476))
* **terraform:** Refactor args ([adbaacc](https://github.com/riskalyze/deployment-actions/commit/adbaaccf2f3108816fac9764e82334ea54058e5d))
* **terraform:** Refactor args ([f3b8342](https://github.com/riskalyze/deployment-actions/commit/f3b8342f3aba54dd94befe779f339e16fca1ada8))
* **terraform:** Require workspace input ([6f2854d](https://github.com/riskalyze/deployment-actions/commit/6f2854d05f62db11e7e11d511a802fa25eadbc61))
* **terraform:** Revert Cd to workdir ([4a14c0c](https://github.com/riskalyze/deployment-actions/commit/4a14c0c769dfda4c5c44004d1bce2a0f14c864e9))
* **terraform:** Run init before workspace selection ([3de8815](https://github.com/riskalyze/deployment-actions/commit/3de881565db499bf933adc5357297210edafe3de))
* **terraform:** Support for private modules repos ([8d6d8b1](https://github.com/riskalyze/deployment-actions/commit/8d6d8b1b38156ee0801710384347d6e70451ed71))
* **terraform:** Support for sops-encrypted tfvars ([d8de8a8](https://github.com/riskalyze/deployment-actions/commit/d8de8a8ba48b434fc0f8e2f4ddfdc163cc8cb252))

## [3.1.0](https://github.com/riskalyze/deployment-actions/compare/v3.0.0...v3.1.0) (2022-07-05)


### Features

* Add terraform action ([438038b](https://github.com/riskalyze/deployment-actions/commit/438038b06d1940175f0bde0c1eba826997d6081e))


### Bug Fixes

* **eks-helm-deploy:** Include ref in helm values ([f38b906](https://github.com/riskalyze/deployment-actions/commit/f38b906efa1a8fdc6ef2aeb4b35c057187c8b135))

## [3.0.0](https://github.com/riskalyze/deployment-actions/compare/v2.3.2...v3.0.0) (2022-06-17)


### ⚠ BREAKING CHANGES

* **deployment-handler:** Several inputs for deployment-handler have been refactored and should be updated in any calling workflows. This change also requires that the service define a "build" job that builds and pushes its Dockerfile if using EKS deployments.

### Code Refactoring

* **deployment-handler:** Move ecr-build-push out of deployment-handler ([bb2a078](https://github.com/riskalyze/deployment-actions/commit/bb2a078f56e9d34046d149e00c19bc7321600d8d))

## [2.3.2](https://github.com/riskalyze/deployment-actions/compare/v2.3.1...v2.3.2) (2022-06-16)


### Bug Fixes

* Move codeartifact-npm-login to build-actions repo ([023e1b7](https://github.com/riskalyze/deployment-actions/commit/023e1b77b893acc142b1b34c1e46afd7458b5cf3))

## [2.3.1](https://github.com/riskalyze/deployment-actions/compare/v2.3.0...v2.3.1) (2022-06-16)


### Bug Fixes

* Move ecr-build-push to build-actions repo ([dd42d91](https://github.com/riskalyze/deployment-actions/commit/dd42d91857070d156498c04d9f782bdae63cd0dd))

## [2.3.0](https://github.com/riskalyze/deployment-actions/compare/v2.2.2...v2.3.0) (2022-06-13)


### Features

* Add "shared-login" action for Codeartifact+ECR logins ([ea1d6fc](https://github.com/riskalyze/deployment-actions/commit/ea1d6fcead86b444e29202770cd162e277257334))


### Bug Fixes

* Don't fail if ECR repo doesn't exist yet ([b6de42c](https://github.com/riskalyze/deployment-actions/commit/b6de42cb637b86738911479e122a48f179fca31c))

## [2.2.2](https://github.com/riskalyze/deployment-actions/compare/v2.2.1...v2.2.2) (2022-06-10)


### Bug Fixes

* Resolve ecr needs-build detection bug ([9d267c1](https://github.com/riskalyze/deployment-actions/commit/9d267c131930a922b0c1c3464fa4c823e818bab9))
* Set chart AppVersion to SHA ([3646245](https://github.com/riskalyze/deployment-actions/commit/364624519e2ed6820eea6e8741a3d2102feb3550))

## [2.2.1](https://github.com/riskalyze/deployment-actions/compare/v2.2.0...v2.2.1) (2022-06-10)


### Bug Fixes

* Add output to ecr-build-push context.sh ([0c1cca6](https://github.com/riskalyze/deployment-actions/commit/0c1cca66fb3bd3d3f0efeb472d2c060648610ba4))

## [2.2.0](https://github.com/riskalyze/deployment-actions/compare/v2.1.1...v2.2.0) (2022-06-10)


### Features

* Add codeartifact-npm-login action ([1deca82](https://github.com/riskalyze/deployment-actions/commit/1deca82ff00318fa47b7bb4c0e5adc7a7172aabd))


### Bug Fixes

* Don't use --force in prod ([c326f81](https://github.com/riskalyze/deployment-actions/commit/c326f812ec3aa782856a83f257444a97705e39b3))
* Don't wait for namespace deletion ([c326f81](https://github.com/riskalyze/deployment-actions/commit/c326f812ec3aa782856a83f257444a97705e39b3))
* Simplify ecr-build-push and cdk-deploy actions ([bacb306](https://github.com/riskalyze/deployment-actions/commit/bacb306ef4a315c37a0d4d9fb5cfec7648ab8be7))
* Wait for resources in prod ([c326f81](https://github.com/riskalyze/deployment-actions/commit/c326f812ec3aa782856a83f257444a97705e39b3))

## [2.1.1](https://github.com/riskalyze/deployment-actions/compare/v2.1.0...v2.1.1) (2022-06-08)


### Bug Fixes

* set ansible-operator: global in helm upgrade ([f0860ee](https://github.com/riskalyze/deployment-actions/commit/f0860eeb366ad446021ffa0b9ba34d3c7442eef3))

## [2.1.0](https://github.com/riskalyze/deployment-actions/compare/v2.0.13...v2.1.0) (2022-06-08)


### Features

* Build Dockerfile if dockerfile-path is given ([9c6ba42](https://github.com/riskalyze/deployment-actions/commit/9c6ba42d1eb3468356e64a1ef65fe15e5d8120e1))

## [2.0.13](https://github.com/riskalyze/deployment-actions/compare/v2.0.12...v2.0.13) (2022-06-08)


### Bug Fixes

* Parse an environment-url from inputs ([f44c9c5](https://github.com/riskalyze/deployment-actions/commit/f44c9c54c5a996a3e3c4ecb568b67f72ca389839))

## [2.0.12](https://github.com/riskalyze/deployment-actions/compare/v2.0.11...v2.0.12) (2022-06-08)


### Bug Fixes

* Don't fail if helm uninstall fails ([2e67423](https://github.com/riskalyze/deployment-actions/commit/2e67423f99547b2a8bdfe229252fbe94e0018273))
* Helm uninstall only if namespace exists ([111b6b5](https://github.com/riskalyze/deployment-actions/commit/111b6b561e06d9b8e60fcff3bf45b111edcebde1))

## [2.0.11](https://github.com/riskalyze/deployment-actions/compare/v2.0.10...v2.0.11) (2022-06-08)


### Bug Fixes

* Copy database migrations into chart dir ([680b976](https://github.com/riskalyze/deployment-actions/commit/680b976acb2f2f8e467dc0f7a2fce325a77a3b01))

## [2.0.10](https://github.com/riskalyze/deployment-actions/compare/v2.0.9...v2.0.10) (2022-06-08)


### Bug Fixes

* Copy database migrations into chart dir ([aa4d908](https://github.com/riskalyze/deployment-actions/commit/aa4d9080aeb77467085941af89090c4a338940bb))

## [2.0.9](https://github.com/riskalyze/deployment-actions/compare/v2.0.8...v2.0.9) (2022-06-08)


### Bug Fixes

* Copy database migrations into chart dir ([ee005fa](https://github.com/riskalyze/deployment-actions/commit/ee005fa440cea6b0dbb5c4ea9a869a6e4a4674a6))

## [2.0.8](https://github.com/riskalyze/deployment-actions/compare/v2.0.7...v2.0.8) (2022-06-08)


### Bug Fixes

* update README ([15d0b16](https://github.com/riskalyze/deployment-actions/commit/15d0b16f09482e8aa3ef8be3db21ac1349b2ff1f))

## [2.0.7](https://github.com/riskalyze/deployment-actions/compare/v2.0.6...v2.0.7) (2022-06-08)


### Bug Fixes

* Create namespace using kubectl and enable istio-injection ([1e2ee37](https://github.com/riskalyze/deployment-actions/commit/1e2ee37fe4d391108e35772c211a53cef1b07220))

## [2.0.6](https://github.com/riskalyze/deployment-actions/compare/v2.0.5...v2.0.6) (2022-06-08)


### Bug Fixes

* Resolve "invalid value workflow reference: references to workflows must be rooted in '.github/workflows'" ([311f9f8](https://github.com/riskalyze/deployment-actions/commit/311f9f85b9b3225c0f827ee870655f6039312bad))

## [2.0.5](https://github.com/riskalyze/deployment-actions/compare/v2.0.4...v2.0.5) (2022-06-08)


### Bug Fixes

* Move deployment-handler.yml into /workflows ([0d6246f](https://github.com/riskalyze/deployment-actions/commit/0d6246fa25fabe06fc3c0883ae109060c1f6b918))

## [2.0.4](https://github.com/riskalyze/deployment-actions/compare/v2.0.3...v2.0.4) (2022-06-08)


### Bug Fixes

* Add major tags ([0178631](https://github.com/riskalyze/deployment-actions/commit/01786310b088a4742d5ed9f1bb1ce4049d624e95))
* Pin to v2 ([0178631](https://github.com/riskalyze/deployment-actions/commit/01786310b088a4742d5ed9f1bb1ce4049d624e95))
* Update refs to riskalyze/deployment-actions ([0178631](https://github.com/riskalyze/deployment-actions/commit/01786310b088a4742d5ed9f1bb1ce4049d624e95))

## [2.0.3](https://github.com/riskalyze/deployment-actions/compare/v2.0.2...v2.0.3) (2022-06-08)


### Bug Fixes

* Add  inputs for cdk-config-path and helm-chart-path ([bc83676](https://github.com/riskalyze/deployment-actions/commit/bc836762941de83a34abbc1fd7633fb43fe4c7b7))

## [2.0.2](https://github.com/riskalyze/deployment-actions/compare/v2.0.1...v2.0.2) (2022-06-07)


### Bug Fixes

* pin versions ([dc2e181](https://github.com/riskalyze/deployment-actions/commit/dc2e18145fc6afc5ab084a79bbbd82555c7fdea6))

## [2.0.1](https://github.com/riskalyze/deployment-actions/compare/v2.0.0...v2.0.1) (2022-06-07)


### Bug Fixes

* Add minor tag workflow ([224896c](https://github.com/riskalyze/deployment-actions/commit/224896c565fdfb19bcb7537d0261074265f756ad))

## [2.0.0](https://github.com/riskalyze/deployment-actions/compare/v1.1.0...v2.0.0) (2022-06-06)


### ⚠ BREAKING CHANGES

* Must pass a cluster input

### Features

* Add Helm ECR dependency support ([4997be8](https://github.com/riskalyze/deployment-actions/commit/4997be8e1ee9794cadc8852df16d2e7d48347a33))
* Add Helm ECR dependency support ([739eb69](https://github.com/riskalyze/deployment-actions/commit/739eb69a6737144ec19386e8e2ecd738b6a1d6ca))
* Add Helm ECR dependency support ([a6f365b](https://github.com/riskalyze/deployment-actions/commit/a6f365b46095b067a47b1b1bc0c9c8e245b032fa))
* Allow passing additional values to Helm ([71294d6](https://github.com/riskalyze/deployment-actions/commit/71294d6692476c0eca337d3c5e5b6234a305f1e2))
* Detect paths for helm, cdk, and docker ([0ccf591](https://github.com/riskalyze/deployment-actions/commit/0ccf591de26c8939df6b70b12f0a7a81223293b9))
* Package helm chart then deploy in separate step ([ba62e87](https://github.com/riskalyze/deployment-actions/commit/ba62e87390209ce60784dfa2f5d6debf1d6acb93))
* Specify image.tag as SHA ([22484bf](https://github.com/riskalyze/deployment-actions/commit/22484bfd8f4891ea3386df2f17ab68b75a2f75b6))
* Support assuming separate Codeartifact role ([6166491](https://github.com/riskalyze/deployment-actions/commit/616649146416bd5a1dcfe1d94c1f72a2c166cc73))


### Bug Fixes

* Create namespace if it doesn't exist ([fa5a0b8](https://github.com/riskalyze/deployment-actions/commit/fa5a0b88f5e9ac9e1a6119e45f5f16f2274b59f5))
* Create namespace if it doesn't exist ([add3486](https://github.com/riskalyze/deployment-actions/commit/add348634906ca262b96adad0f065d4086142653))
* Don't wait for helm operations ([dac95d7](https://github.com/riskalyze/deployment-actions/commit/dac95d78fdcbf1f0f1181c76aae0c1f3ba81af80))
* Require cluster input ([41ee8ff](https://github.com/riskalyze/deployment-actions/commit/41ee8ffc5448afdb8a1d45e15eee4f0f4d62215a))
* set if: always() for eks-helm-deploy ([5693d02](https://github.com/riskalyze/deployment-actions/commit/5693d02e82a31d699a1c9fe71efb73ebf10c8097))
* ugly conditional for step success validation ([f7d2da9](https://github.com/riskalyze/deployment-actions/commit/f7d2da958dcb8f6e107070a50c4c711936bd694a))
* Use correct path to .npmrc ([abcbb1c](https://github.com/riskalyze/deployment-actions/commit/abcbb1c79003d5fbebdcccbdf2514b98c45ac780))
* Use helm to install/uninstall resources ([5ad37a9](https://github.com/riskalyze/deployment-actions/commit/5ad37a9f1356ec68f98f0959ffdea5ad8e0c7bd5))


### Performance Improvements

* Only build Docker image on deploy tasks ([62aa0e3](https://github.com/riskalyze/deployment-actions/commit/62aa0e3a386c1887643d9ecdcf15f3e9e8d46ca7))

## [1.1.0](https://github.com/riskalyze/deployment-actions/compare/v1.0.1...v1.1.0) (2022-06-01)


### Features

* Add Codeartifact login ([78c4c87](https://github.com/riskalyze/deployment-actions/commit/78c4c87608cfcfbfdf086a7caeb08fd2d1036ab5))
* Add Codeartifact login ([1f9b294](https://github.com/riskalyze/deployment-actions/commit/1f9b2942b0a364faf7b74ab4f4d08532b4ecda21))
* Add ECR build-push action ([a9589a6](https://github.com/riskalyze/deployment-actions/commit/a9589a692bb37615e06a3865ffedb5cedf6b225d))
* Add EKS deploy workflow ([51b4be0](https://github.com/riskalyze/deployment-actions/commit/51b4be0c485e1fe41d1b9dac0acb9151ef348aee))
* **deployment-manager:** Add deployment-manager action ([5223ebf](https://github.com/riskalyze/deployment-actions/commit/5223ebf5f6b15112068228a729921dce312dacd7))
* **deployment-manager:** Add deployment-manager action ([430921a](https://github.com/riskalyze/deployment-actions/commit/430921a35f9cadafc7e50e6874f3498d3ca786e4))
* **deployment-manager:** Add deployment-manager action ([a458d80](https://github.com/riskalyze/deployment-actions/commit/a458d80a9b046c5668af4d86fd3c3d64e6902ff0))
* **eks-deploy:** :sparkles: add twingate action ([4c8fec3](https://github.com/riskalyze/deployment-actions/commit/4c8fec35e92da02eb23d15a2ea2b1cabb3fb3a0e))


### Bug Fixes

* :bug: pass env to kubectl step ([b4732de](https://github.com/riskalyze/deployment-actions/commit/b4732de2c3cbb79b403408a421eb5bd3eb46fd17))
* Add helm-template composite action ([dae4075](https://github.com/riskalyze/deployment-actions/commit/dae40758a0beb796eccc793b2c80e237d0b64c55))
* Add path input ([4dac187](https://github.com/riskalyze/deployment-actions/commit/4dac187eb1ed7252c7de91b422e95193cffad8d0))
* Add step to create ECR repo if needed ([253f6cb](https://github.com/riskalyze/deployment-actions/commit/253f6cba7536f73d9ea3b67bc240682853fce471))
* Don't create ECR repo (for now) ([13adeb8](https://github.com/riskalyze/deployment-actions/commit/13adeb8d46803c1c4e31d22a6bf1d7bd14b006cb))
* Download manifests from artifacts ([eb5160a](https://github.com/riskalyze/deployment-actions/commit/eb5160a15683ca7860be099c4bdf4852a3829f38))
* **ecr-build-push:** fix a bug in codeartifact auth ([1c66f92](https://github.com/riskalyze/deployment-actions/commit/1c66f92c9792fdd03d05f6b86eb0907dd244408d))
* **ecr-build-push:** fix a bug in codeartifact auth ([9a2b21f](https://github.com/riskalyze/deployment-actions/commit/9a2b21ff006672ebb99d79cfde64ee727c3cde70))
* **ecr-build-push:** fix a bug in codeartifact auth ([4f14332](https://github.com/riskalyze/deployment-actions/commit/4f14332bc59c6ec3d74b1eedc586dc7e017fd006))
* **eks-deploy:** Remove checkout step from eks deploy ([7505114](https://github.com/riskalyze/deployment-actions/commit/75051148eaefd2a1bc09bde53c7ef71f0862c3b4))
* Fix up the secret conditional ([4201837](https://github.com/riskalyze/deployment-actions/commit/42018375064a9d64dff6de28c3b93fccd4176b26))
* Pass secret via inputs ([823603e](https://github.com/riskalyze/deployment-actions/commit/823603e7c9fc048acbf7b42c17489253d679fc64))
* Remove dependency ([cf94413](https://github.com/riskalyze/deployment-actions/commit/cf9441361bf14c3c449592f19a010f394fda6811))
* Use byerobot/create-ecr-repository-action ([078a188](https://github.com/riskalyze/deployment-actions/commit/078a18895b016c4ef201af85a0ca6d54d405b5f1))


### Reverts

* Move CDK command into script ([59a638f](https://github.com/riskalyze/deployment-actions/commit/59a638ffb030aa2ac53c4fbe92d34300e683e6a5))

### [1.0.1](https://github.com/riskalyze/cdk-deploy/compare/v1.0.0...v1.0.1) (2022-05-27)


### Bug Fixes

* Resolve issue with clobbering payloads when setting the environment here ([46ff73a](https://github.com/riskalyze/cdk-deploy/commit/46ff73a6382d940691f60534ccaab5774cbbd3be))
* Use chrnorm/deployment-status ([05331b6](https://github.com/riskalyze/cdk-deploy/commit/05331b6c03f819eae994129b638cd23c5c3d68dc))

## 1.0.0 (2022-05-27)


### Bug Fixes

* Detect yarn/npm ([113eb8b](https://github.com/riskalyze/cdk-deploy/commit/113eb8b320ac8c39c865f2e0cc1463c123b42315))
