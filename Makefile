run:
	go run wsserver.go

all: prep binaries docker

prep:
	mkdir -p bin

binaries: linux64

linux64:
	GOOS=linux GOARCH=amd64 go build -o bin/wsserver wsserver.go

docker: linux64
	docker build -t pasientskyhosting/wsserver:1.0 .

docker-run:
	docker run pasientskyhosting/wsserver:1.0

docker-push: docker
	docker push pasientskyhosting/wsserver:1.0
