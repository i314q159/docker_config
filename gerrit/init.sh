docker volume create gerrit_git
docker volume create gerrit_index
docker volume create gerrit_cache
docker volume create gerrit_db
docker volume create gerrit_etc

docker run -d -p 8080:8080 -p 29418:29418 -v gerrit_git:/var/gerrit/git -v gerrit_index:/var/gerrit/index -v gerrit_cache:/var/gerrit/cache -v gerrit_db:/var/gerrit/db -v gerrit_etc:/var/gerrit/etc --name gerrit docker.io/gerritcodereview/gerrit
