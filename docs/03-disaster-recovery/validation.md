# DR validation

| Check | Evidence |
|---|---|
| source healthy | cluster/service screenshot |
| target healthy | cluster/service screenshot |
| application protected | protection state |
| replication healthy | replication/protection state |
| failover initiated | event/timestamp |
| target pods running | `oc get pods` |
| data present | application marker |
| endpoint available | HTTP/application check |
| RTO measured | timestamp delta |
| RPO measured | transaction marker |
