FROM tglanz/druid-node

COPY conf/druid/cluster/master conf/druid/cluster/master 
COPY conf/supervise/cluster/master-no-zk.conf conf/supervise/cluster/master-no-zk.conf

CMD ./bin/node.sh broker start

