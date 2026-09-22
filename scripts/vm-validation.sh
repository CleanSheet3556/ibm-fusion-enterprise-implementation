#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="${1:-fusion-demo}"

command -v oc >/dev/null 2>&1 || { echo "ERROR: oc not found" >&2; exit 1; }

echo "== VM resources =="
oc get vm -n "$NAMESPACE" -o wide 2>/dev/null || true
oc get vmi -n "$NAMESPACE" -o wide 2>/dev/null || true

echo "== Pods =="
oc get pods -n "$NAMESPACE" -o wide

echo "== Storage =="
oc get pvc -n "$NAMESPACE"

echo "== Networking =="
oc get svc -n "$NAMESPACE" || true
oc get route -n "$NAMESPACE" || true

echo "VM validation complete; guest-level and Fusion workflow validation remain required."
