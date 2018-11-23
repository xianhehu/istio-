kubeadm reset -f

echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables

kubeadm init --pod-network-cidr=192.168.0.0/16 

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f \
https://docs.projectcalico.org/v3.2/getting-started/kubernetes/installation/hosted/etcd.yaml

kubectl apply -f \
https://docs.projectcalico.org/v3.2/getting-started/kubernetes/installation/rbac.yaml

kubectl apply -f \
https://docs.projectcalico.org/v3.2/getting-started/kubernetes/installation/hosted/calico.yaml


kubectl taint nodes --all node-role.kubernetes.io/master-
