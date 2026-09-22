#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="${1:-fusion-demo}"

command -v oc >/dev/null 2>&1 || { echo "ERROR: oc not found" >&2; exit 1; }
oc whoami >/dev/null 2>&1 || { echo "ERROR: authenticate first" >&2; exit 2; }

echo "== Cluster identity =="
oc whoami --show-server
oc get clusterversion

echo "== Application state =="
oc get pods -n "$NAMESPACE" -o wide
oc get pvc -n "$NAMESPACE"

echo "== Endpoint state =="
oc get svc -n "$NAMESPACE" || true
oc get route -n "$NAMESPACE" || true

echo "DR validation requires Fusion/RHACM protection-state evidence in addition to these OpenShift checks."
