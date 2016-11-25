docker-entrypoint.sh mysqld &
sleep 30
mysql --user=sius --password=sius_es events_system < /create.sql
while true; do sleep 1000; done
