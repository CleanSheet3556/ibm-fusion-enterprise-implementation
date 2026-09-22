#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="${1:-fusion-demo}"

command -v oc >/dev/null 2>&1 || { echo "ERROR: oc not found" >&2; exit 1; }
oc auth can-i get pods -n "$NAMESPACE" >/dev/null || {
  echo "ERROR: current identity cannot inspect namespace $NAMESPACE" >&2
  exit 2
}

echo "== Application resources =="
oc get pods -n "$NAMESPACE"
oc get pvc -n "$NAMESPACE"
oc get svc -n "$NAMESPACE" || true
oc get route -n "$NAMESPACE" || true

echo "== Recent namespace events =="
oc get events -n "$NAMESPACE" --sort-by=.lastTimestamp | tail -50

echo "Backup validation framework complete. Fusion-specific job/policy validation must use the deployed release's documented API/UI."
