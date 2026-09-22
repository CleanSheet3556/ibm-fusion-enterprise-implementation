# Multi-cluster architecture

```text
                Management / Hub cluster
                         |
                Multicluster Engine
                 /       |        \
                /        |         \
          Managed A   Managed B   Hosted cluster
             |            |            |
            FDF          FDF          HCP
```

The exact supported topology depends on Fusion, FDF, OpenShift and MCE versions.

The goal is to demonstrate lifecycle management, not merely register a cluster.
