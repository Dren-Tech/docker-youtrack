# docker-youtrack
A Docker container with the Youtrack software from JetBrains.

__Attention:__ This project is old and not supported.

## Using
To use the image build it first:

```
git clone https://github.com/Dren-Tech/docker-youtrack.git && cd docker-youtrack
docker build -t drentech/youtrack .
```

You can then start a container with the image:

```
docker run --rm=true -p 8080:8080 drentech/youtrack
```
