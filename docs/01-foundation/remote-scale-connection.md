# Remote IBM Storage Scale connection

## Objective

Connect an existing IBM Storage Scale filesystem to Fusion without pretending that the remote cluster is local storage.

## Supported design

IBM's Fusion 2.13.0 documentation describes remote mount support and the OpenShift-release-dependent configuration path.

For the OCP 4.21 baseline, follow the current FDF + IBM Storage Scale configuration procedure. Do not use an OCP 4.20-and-earlier UI sequence.

## Required information

- remote Scale cluster name;
- up to three documented contact nodes where required;
- IP addresses/DNS;
- filesystem name;
- network/subnet information where required;
- approved Scale GUI/API credentials;
- firewall rules;
- TLS/encryption requirements.

## Scale-side validation

On the Scale cluster, IBM documents commands such as:

```bash
mmlscluster
mmdiag --version
mmlsfs all -V
```

Run them on the Scale administration host with appropriate privileges.

## Fusion-side validation

Validate:

- connection state;
- filesystem visibility;
- generated/static PV where the documented remote mount workflow creates one;
- workload read/write access;
- failure behavior when the remote dependency is unavailable.

## Failure scenarios

| Symptom | Likely cause |
|---|---|
| connection fails | firewall/DNS/contact node/authentication |
| filesystem not visible | Scale filesystem state/configuration |
| workload cannot mount | PV/path/permissions/CSI state |
| intermittent I/O | network/Scale health/latency |
| TLS failure | certificate/trust mismatch |

## Evidence

Capture sanitized:

- connection configuration;
- health state;
- Scale version output;
- PV/StorageClass;
- test workload result.
