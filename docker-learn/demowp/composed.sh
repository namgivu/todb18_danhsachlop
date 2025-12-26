    SH=`cd $(dirname $0) && pwd`
cd $SH
docker compose -p hieunguyen down --remove-orphans
