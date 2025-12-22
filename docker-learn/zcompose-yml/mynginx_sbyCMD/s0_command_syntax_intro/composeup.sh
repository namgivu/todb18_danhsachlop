    SH=`cd $(dirname $0) && pwd`
cd $SH

# docker compose up
  docker compose up -d  --force-recreate
  #                 -d detach
