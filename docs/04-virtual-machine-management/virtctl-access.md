# virtctl access

Install the `virtctl` client version compatible with the OpenShift Virtualization release. Prefer the client binary provided by the cluster's OpenShift Virtualization tooling/documentation.

Validate:

```bash
virtctl version
oc whoami
```

Then use the documented `virtctl` console/SSH workflow for the VM.

Do not place credentials in command history or repository files.
