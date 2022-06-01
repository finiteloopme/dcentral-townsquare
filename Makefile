# Add targets here so that 'Make' doesn't 
# confuse them with actual files in this directory
.PHONY: init clean build test deploy

OUTPUT_DIR=bin

init:
	go mod tidy -go=1.16 && go mod tidy -go=1.17
	go mod vendor

clean:
	rm -fr ${OUTPUT_DIR}

build:
	go build -o ${OUTPUT_DIR}/dcentral-townsquare ./...

test:

deploy: