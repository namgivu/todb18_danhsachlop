    SH=`cd $(dirname $0) && pwd`
cd $SH

 NAME=${1:-${n}}
#NAME=${n:-${1}}
#       v:-val if v empty

# cook vol file index.html w/ envvar $NAME
                              v="$SH/v"
                    index_f="$v/usr/share/nginx/html/index.html"
echo "Hi $NAME!" > $index_f

# up
docker compose up -d
