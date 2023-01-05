PRODUCT_NAME := VolleyballScoreApp
WORKSPACE_NAME := ${PRODUCT_NAME}.xcworkspace

.PHONY: generate-xcworkspace
generate-xcworkspace: ## generate xcworkspace
	$(MAKE) pod-install
	$(MAKE) open

.PHONY: setup
setup: ## install bundler and bundle install, pod install
	$(MAKE) gem-install
	$(MAKE) bundle-install
	$(MAKE) generate-xcworkspace

.PHONY: gem-install
gem-install: ## gem install
	$(info $(SEPARATOR))
	gem install bundler

.PHONY: bundle-install
bundle-install: ## bundle install
	$(info $(SEPARATOR))
	bundle install -j4

.PHONY: pod-install
pod-install: ## bundle exec pod install
	$(info $(SEPARATOR))
	bundle exec pod install

.PHONY: open
open: ## Open workspace in Xcode
	open ./${WORKSPACE_NAME}

.PHONY: enable-faster-builds
enable-faster-builds: ## Enable faster builds for Swift projects
	defaults write com.apple.dt.XCBuild EnableSwiftBuildSystemIntegration 1

.PHONY: Xcode-build
Xcode-build: ## Xcode build command for CI
	set -o pipefail && xcodebuild -sdk iphonesimulator -configuration Debug -workspace ${WORKSPACE_NAME} -scheme ${PRODUCT_NAME} build | bundle exec xcpretty

.PHONY: Xcode-clean
Xcode-clean: ## delete DerivedData
	rm -rf ~/Library/Developer/Xcode/DerivedData/

.PHONY: help
help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

SEPARATOR=********************
