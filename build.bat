docker rm -f free-idea
docker image rm -f idea-crack-server:1.4
docker build -t idea-crack-server:1.4 .
docker run --restart=always -p 25252:25252 --name free-idea -d idea-crack-server:1.4
pause