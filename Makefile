.PHONY: build

build:
	sam-nightly build
deploy: build
	sam-nightly deploy --profile=dev
