docker run -d \
  -p 9090:9090 \
  -v /home/john/Docker/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
  --name prometheus \
  prom/prometheus

