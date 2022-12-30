PRODUCT_NAME := VolleyballScoreApp
WORKSPACE_NAME := ${PRODUCT_NAME}.xcworkspace

.PHONY: open
open: ## Open workspace in Xcode
	open ./${WORKSPACE_NAME}

.PHONY: setup
setup: ## setup
	gem install bundler
	bundle install

.PHONY: help
help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY:
generate: ## generate xcworkspace
	bundle exec pod install
	$(Make) open
