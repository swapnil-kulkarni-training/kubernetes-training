#!/bin/bash
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo mv kubectl /usr/bin/kubectl
sudo chmod +x /usr/bin/kubectl
rm -rf /home/docker/.kube && mkdir -p /home/docker/.kube
sudo cp /etc/kubernetes/admin.conf /home/docker/.kube/config
sudo chown docker:docker /home/docker/.kube/config
kubectl version
kubectl cluster-info
