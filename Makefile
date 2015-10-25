IMAGE_NAME = drentech/java
CONTAINER_NAME = java

default:
	echo "Hello World!"

build:
	docker build --rm=true -t $(IMAGE_NAME) .

run:
	docker run --name="$(CONTAINER_NAME)" -d $(IMAGE_NAME)

bash:
	docker run --name="$(CONTAINER_NAME)" -i -t $(IMAGE_NAME) bash

stop:
	docker stop $(CONTAINER_NAME)

clean: stop
	docker rm $(CONTAINER_NAME)
