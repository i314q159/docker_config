docker swarm init --advertise-add 192.168.11.100
docker swarm join-token worker
docker swarm join-token manager
docker node ls
docker stack ls
docker stack deploy -c docker-compose.yml
