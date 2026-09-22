# Troubleshooting — VM creation, virtctl, migration, routes, external networks and VM protection

## Method

```text
SYMPTOM
  ↓
POSSIBLE CAUSES
  ↓
DIAGNOSTIC EVIDENCE
  ↓
CORRECTIVE ACTION
  ↓
VALIDATION
```

## First response

1. Record timestamp and scope.
2. Do not make additional changes until the blast radius is understood.
3. Check cluster/operator health.
4. Check recent events.
5. Check component-specific logs using the supported IBM/Red Hat procedure.
6. Preserve evidence before remediation.

## Generic OpenShift diagnostics

```bash
oc get co
oc get nodes
oc get pods -A
oc get events -A --sort-by=.lastTimestamp | tail -100
```

## Important

IBM Fusion services expose release-specific resources, APIs and log locations. This repository deliberately does not invent those details. Use the deployed release's IBM documentation and capture the exact commands used during the demonstration.

## Validation

The issue is resolved only when the original service-level symptom is gone and downstream application validation succeeds.
