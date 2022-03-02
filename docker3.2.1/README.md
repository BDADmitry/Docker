1. build image:

docker build -t ubuntu-apache:2.0 .

2. run docker image:

docker run -it -d --rm -p 8080:80 --env DEVOPS="Dima_Bogdanov" --name ubuntu-apache-container ubuntu-apache:2.0
