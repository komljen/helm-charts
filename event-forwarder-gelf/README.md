# Helm chart for event-forwarder-gelf

To start, add the repo first:
```
helm repo add akomljen-charts https://raw.githubusercontent.com/komljen/helm-charts/master/charts/
```

Install the helm chart:
```
helm install --name xing-efg \
  --namespace kube-system \
  --set extraEnv.CLUSTER=cluster-name \
  --set extraEnv.GRAYLOG_HOST=graylog \
  --set extraEnv.GRAYLOG_PORT=12222 \
  akomljen-charts/event-forwarder-gelf
```
