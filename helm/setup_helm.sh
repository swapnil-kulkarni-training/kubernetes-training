!#/bin/bash
curl -L https://git.io/get_helm.sh | bash
helm init --client-only

wget https://gist.githubusercontent.com/coolsvap/6692c6fb9dc62faba202b8ed6f486609/raw/980612c93e35cc9af0c7071b9326393815efba50/helm-rbac.yaml
kubectl create -f helm-rbac.yaml
helm init --service-account tiller
