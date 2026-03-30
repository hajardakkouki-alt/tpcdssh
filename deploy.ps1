param(
    [string]$DockerUser,
    [string]$DockerToken
)
docker login -u hajardk -p $DockerToken
docker stop flask_app -ErrorAction SilentlyContinue
docker rm flask_app -ErrorAction SilentlyContinue
docker pull hajardk/flask_devops_demo:latest
docker run -d  --name flask_app -p 5000:5000 hajardk/flask_devops_demo:latest
