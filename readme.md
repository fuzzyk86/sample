Commands:
docker build --tag flask-demo .
docker run --detach --publish 5000:50505 flask-demo