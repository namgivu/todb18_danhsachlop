    SH=`cd $(dirname $0) && pwd`
cd $SH

#export NAME='todb18 2025'
#docker compose up -d  --force-recreate
#                  -d detach

#NAME='todb18 2025' docker compose up -d  --force-recreate

NAME=${1:-${n:-'todb18 2025'}} \
  docker compose up -d  --force-recreate

cat<<EOT
--- what's next cmd
docker logs    s1_nginx_hiname_v1-mynginx-c-1
docker logs -f s1_nginx_hiname_v1-mynginx-c-1
#           -f follow

cd $SH
docker compose logs
docker compose logs -f
#                   -f follow

curl http://localhost:880

EOT
