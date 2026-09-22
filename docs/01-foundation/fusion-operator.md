# Fusion Operator

## Objective

Install and validate the IBM Fusion operator on OpenShift.

## Procedure

Use the IBM Fusion 2.13.0 installation procedure for the selected deployment type. The exact OperatorHub channel, namespace, catalog source and approval strategy are release-dependent and must be taken from IBM's installation documentation.

High-level workflow:

1. Confirm supported OCP version.
2. Obtain entitlement and pull secret.
3. Configure required registries/network access.
4. Install the Fusion Operator using the documented method.
5. Confirm the operator subscription/install plan and CSV where applicable.
6. Confirm operator pods.
7. Confirm Fusion console/base service health.

## Safe validation

```bash
oc get pods -A
oc get subscriptions -A
oc get csv -A
oc get events -A --sort-by=.lastTimestamp | tail -50
```

Do not assume the namespace or CSV name from this repository. Query the cluster and IBM documentation.

## Failure analysis

**Symptom:** operator not progressing.

Check:

- Subscription/InstallPlan state;
- catalog source availability;
- image pull failures;
- namespace events;
- insufficient resources;
- RBAC;
- proxy/firewall;
- entitlement credentials.

Capture:

```bash
oc describe subscription <subscription> -n <namespace>
oc describe csv <csv> -n <namespace>
oc get events -n <namespace> --sort-by=.lastTimestamp
```

Replace placeholders with discovered resources; do not commit customer output.

## Evidence checkpoint

- screenshot of Installed Operators;
- CSV status;
- pod status;
- event output;
- Fusion console access.
