.PHONY: build
build:
	docker build -t ase -f Dockerfile .

.PHONY: run
run:
	docker run -d -p 3001:80 --rm --name ase ase || :

.PHONY: exec
exec:
	docker exec -it ase /bin/bash || :

.PHONY: stop
stop:
	docker stop ase || :

.PHONY: logs
logs:
	docker logs -f ase || :
