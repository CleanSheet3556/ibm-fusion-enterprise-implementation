# VM networking

## Network layers

- pod/cluster network;
- VM interface;
- service;
- route;
- external network attachment where required.

Validate:

```bash
oc get svc -n <namespace>
oc get route -n <namespace>
oc get network-attachment-definitions -n <namespace>
```

Only create a NetworkAttachmentDefinition when the use case requires a secondary/external network and the cluster networking design supports it.
