IMAGE_NAME = drentech/youtrack
CONTAINER_NAME = youtrack

default:
	echo "Hello World!"

build:
	docker build --rm=true -t $(IMAGE_NAME) .

run:
	docker run --name="$(CONTAINER_NAME)" -p 8080:8080 -d $(IMAGE_NAME)

bash:
	docker run --name="$(CONTAINER_NAME)" -p 8080:8080 -i -t $(IMAGE_NAME) bash

stop:
	docker stop $(CONTAINER_NAME)

clean: stop
	docker rm $(CONTAINER_NAME)
