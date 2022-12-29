PRODUCT_NAME := VolleyballScoreApp
WORKSPACE_NAME := ${PRODUCT_NAME}.xcworkspace


.PHONY: open
open: # Open workspace in Xcode
	open ./${WORKSPACE_NAME}

.PHONY: setup
setup: # setup
	gem install bundler
	bundle install

.PHONY:
generate:
	bundle exec pod install
	$(Make) open
