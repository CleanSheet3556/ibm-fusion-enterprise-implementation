# OpenShift Route

A Route exposes an OpenShift Service externally using the cluster ingress layer.

Design decisions:

- hostname;
- TLS termination mode;
- certificate ownership;
- application port;
- DNS record;
- client source ranges if restricted.

Validate:

```bash
oc get route -n <namespace>
oc describe route <route> -n <namespace>
```

Test with an approved client:

```bash
curl -k https://<route-hostname>/
```

Use `-k` only for a controlled lab when the certificate is intentionally untrusted; production validation should verify the certificate chain.
