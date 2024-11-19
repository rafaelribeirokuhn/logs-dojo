# Logs Dojo

This project is a basic structure for logs ingestion, transformation and forwarding.

It uses:

- Fluent bit 1.8
- Logstash / ES / Kibana 8.11.0

## How to make sample logs

The generator create sample logs each 1 second.

Generate log:

```console
 $./log-generator.sh
```   

Clear logs:

```console
$./log-generator.sh clear
```

## References

https://docs.fluentbit.io/manual/1.8/local-testing/logging-pipeline

https://www.elastic.co/pt/blog/getting-started-with-the-elastic-stack-and-docker-compose

https://github.com/elkninja/elastic-stack-docker-part-one

https://github.com/Linx-Enterprise/aks-oms-inventory/blob/dev/deploy/cloud/fluentbit/configMap.yaml

https://github.com/Linx-Enterprise/aks-oms-observability-dev/blob/master/deploy/elk/logstash/configMap.yaml