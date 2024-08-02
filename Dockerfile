FROM          docker.io/golang
RUN           mkdir /app
ADD           main.go /app/
WORKDIR       /app
RUN           go mod init dispatch && go get && go build
ADD           run.sh /app/
ENTRYPOINT    ["bash", "/app/run.sh"]