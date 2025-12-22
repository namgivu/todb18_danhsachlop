    SH=`cd $(dirname $0) && pwd`
cd $SH

# docker compose up
  docker compose up -d  --force-recreate
  #                 -d detach

cat<<EOT
--- what's next cmd
docker logs    s1-mynginx-c-1
docker logs -f s1-mynginx-c-1
#           -f follow

cd $SH
docker compose logs
docker compose logs -f
#                   -f follow

EOT
