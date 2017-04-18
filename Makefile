build:
	docker build -t alex/uwsgi-nginx-flask .

run:
	docker run -d --name flask -p 80:80 -v /home/cynovo/mydocker/flask/app:/app alex/uwsgi-nginx-flask

run-test:
	docker run --rm --name flask -p 80:80 -v /home/cynovo/mydocker/flask/app:/app alex/uwsgi-nginx-flask

enter:
	docker exec -it flask /bin/bash

kill:
	docker kill flask
	docker rm flask
