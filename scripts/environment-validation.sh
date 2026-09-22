#!/usr/bin/env bash
set -euo pipefail

fail() { echo "ERROR: $*" >&2; exit 1; }

command -v oc >/dev/null 2>&1 || fail "oc is required."
oc whoami >/dev/null 2>&1 || fail "OpenShift authentication is required."

echo "== Cluster =="
oc get clusterversion
echo "== Nodes =="
oc get nodes
echo "== Operators =="
oc get co
echo "== Storage =="
oc get sc
echo "== Recent events =="
oc get events -A --sort-by=.lastTimestamp | tail -50

echo "Environment validation completed."
