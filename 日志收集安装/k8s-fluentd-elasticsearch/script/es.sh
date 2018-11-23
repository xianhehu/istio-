rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

cat <<EOF >  /etc/yum.repos.d/elasticsearch.repo
[elasticsearch-2.x]
name=Elasticsearch repository for 2.x packages
baseurl=http://packages.elastic.co/elasticsearch/2.x/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

yum install elasticsearch


wget https://artifacts.elastic.co/downloads/kibana/kibana-6.0.0-x86_64.rpm
