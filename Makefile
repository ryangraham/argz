all:
	@echo "test - clean, build, and test"
	@echo "clean - remove built files"
	@echo "install - install"

install: clean
	cd build && cmake .. && cmake --build . --config Release --target install

.PHONY: build
build:
	cd build && cmake .. && $(MAKE)

clean:
	rm -rf ./build/* || true

docker:
	docker build -t ryangraham/argz:0.0.1 .

push:
	docker push ryangraham/argz:0.0.1

example:
	cd examples/print && $(MAKE) run
