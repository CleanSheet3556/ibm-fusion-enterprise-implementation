# Foundation prerequisites

## Version baseline

- IBM Fusion: 2.13.0 documentation baseline.
- OpenShift Container Platform: 4.21.
- FDF: release supported by Fusion 2.13.0/OCP 4.21.
- IBM Storage Scale: supported level for the chosen Global Data Platform/remote mount design.

IBM documents Fusion 2.13.0 as supporting OCP 4.18–4.21 and FDF 4.18–4.21; the support matrix must be checked again before implementation.

## Access

- cluster-admin for installation activities where required;
- named operational accounts for day-to-day work;
- IBM entitlement/pull secret;
- access to IBM documentation and support matrix;
- access to the storage infrastructure;
- DNS and network services;
- time synchronization.

## Preflight

Run:

```bash
oc whoami
oc version
oc get clusterversion
oc get nodes -o wide
oc get co
oc get sc
```

Record output in `evidence/foundation/`.

## Security

Do not store the kubeconfig in Git. Authenticate using the engineer's approved workstation/session.
