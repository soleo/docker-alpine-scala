IMAGE = soleo/alpine-scala:latest
IMAGE_STABLE = soleo/alpine-scala:2.11.7

default:
	docker build -t $(IMAGE) .

stable:
	docker build -t $(IMAGE_STABLE) -f Dockerfile.scala.stable .

hack:
	docker run -ti --rm -v `pwd`:/code $(IMAGE) bash