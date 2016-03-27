IMAGE = soleo/alpine-scala:latest

default:
	docker build -t $(IMAGE) .

hack:
	docker run -ti --rm -v `pwd`:/code $(IMAGE) bash