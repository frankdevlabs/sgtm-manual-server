# Path: env.conf
env $(cat ./.env | xargs) envsubst < ./docker-compose.yml | docker stack deploy --compose-file - sgtm
