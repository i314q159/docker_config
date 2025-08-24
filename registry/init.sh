docker volume create registry_data
docker run -d -p 5000:5000 -v registry_data:/var/lib/registry --name=registry docker.io/library/registry
