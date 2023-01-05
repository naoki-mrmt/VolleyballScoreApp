PRODUCT_NAME := VolleyballScoreApp
WORKSPACE_NAME := ${PRODUCT_NAME}.xcworkspace

.PHONY: generate-xcworkspace
generate-xcworkspace: ## generate xcworkspace
	$(MAKE) pod-install
	$(MAKE) open

.PHONY: setup
setup: ## setup
	$(MAKE) gem-install
	$(MAKE) bundle-install
	$(MAKE) generate-xcworkspace

.PHONY: gem-install
gem-install: ## gem install
	gem install bundler

.PHONY: bundle-install
bundle-install: ## bundle install
	bundle install

.PHONY: pod-install
pod-install: ## bundle exec pod install
	bundle exec pod install

.PHONY: open
open: ## Open workspace in Xcode
	open ./${WORKSPACE_NAME}

.PHONY: Xcode-build
Xcode-build: ## Xcode build command for CI
	set -o pipefail && xcodebuild -sdk iphonesimulator -configuration Debug -workspace ${WORKSPACE_NAME} -scheme ${PRODUCT_NAME} build | bundle exec xcpretty

.PHONY: help
help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
