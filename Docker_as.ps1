docker run -d -p 5000:5000 --restart=always --name registry registry:2
docker build -f $PSScriptRoot\docker-compose.yml -t ubuntu_as .
docker tag ubuntu_as localhost:5000/my-ubuntu_as
docker push localhost:5000/my-ubuntu_as