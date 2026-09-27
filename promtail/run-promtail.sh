!#/bin/bash


docker run -d \
  --name promtail \
  -v /var/log:/var/log \
  -v /var/lib/docker/containers:/var/lib/docker/containers:ro \
  -v $(pwd)/promtail-config.yaml:/etc/promtail/config.yml \
  grafana/promtail:latest \
  -config.file=/etc/promtail/config.yml

