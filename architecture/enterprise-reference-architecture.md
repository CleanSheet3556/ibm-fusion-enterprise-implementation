# Enterprise reference architecture

```text
                         Enterprise users / applications
                                  |
                            DNS / Ingress
                                  |
                       +----------+----------+
                       |   OpenShift Hub     |
                       | IBM Fusion          |
                       | MCE / management     |
                       +----------+----------+
                                  |
             +--------------------+--------------------+
             |                    |                    |
            FDF               Backup/Restore       VM platform
             |                    |                    |
        CSI / storage       Protected repository   VMs/PVCs
             |
     +-------+--------+
     |                |
Local/External    Storage Scale
     |                |
     +--------+-------+
              |
       Remote enterprise data

            Region A                         Region B
       Primary cluster                  Recovery cluster
              \                         /
               \---- Regional DR -------/
```

## Architecture principles

- separate platform, application and recovery responsibilities;
- use supported service combinations;
- keep recovery dependencies outside the primary blast radius;
- treat network, identity and DNS as DR dependencies;
- validate recovery, not only replication;
- automate repeatable validation while keeping destructive actions manual and authorized.
