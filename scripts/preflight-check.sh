#!/usr/bin/env bash
set -euo pipefail

fail() { echo "ERROR: $*" >&2; exit 1; }

command -v oc >/dev/null 2>&1 || fail "oc CLI is not installed."
oc whoami >/dev/null 2>&1 || fail "Not authenticated to OpenShift."

echo "== OpenShift client =="
oc version --client || true

echo "== Cluster version =="
oc get clusterversion

echo "== Nodes =="
oc get nodes

echo "== Cluster operators =="
oc get co

echo "== StorageClasses =="
oc get sc

echo "Preflight completed. Review output before making changes."
