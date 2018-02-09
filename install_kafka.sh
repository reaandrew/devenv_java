curl -L -o /opt/kafka_2.12-1.0.0.tgz http://apache.mirror.anlx.net/kafka/1.0.0/kafka_2.12-1.0.0.tgz
curl -L -o /opt/zookeeper-3.4.11.tar.gz http://apache.mirror.anlx.net/zookeeper/zookeeper-3.4.11/zookeeper-3.4.11.tar.gz

tar -zxvf /opt/kafka_2.12-1.0.0.tgz -C /opt/
tar -zxvf /opt/zookeeper-3.4.11.tar.gz -C /opt/

echo 'Add these lines to your rc file'
echo 'export PATH=/opt/kafka_2.12-1.0.0/bin:$PATH'
echo 'export PATH=/opt/zookeeper-3.4.11/bin:$PATH'
