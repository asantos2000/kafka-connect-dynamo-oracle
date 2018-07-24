docker exec -it kafka  \
kafka-configs --zookeeper localhost:2181  --entity-type topics --entity-name $1 --alter --add-config retention.ms=500 \
&& echo "the messages are going away. ..." \
&& sleep 10 \
&& kafka-configs --zookeeper localhost:2181  --entity-type topics --entity-name $1 --alter --add-config retention.ms=604800000 \
&& echo "they are gone.. ..."