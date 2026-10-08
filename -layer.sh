#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════════════════
# NEXUSBOX LAYER — Phase 3
# Auteur : Aissa Mohammedi (DGK)
# Description : Snapshots, rollback, layers, tags. Utilise le binaire Rust
#               nexusbox-hash pour les opérations lourdes.
# ═══════════════════════════════════════════════════════════════════════════════
set -uo pipefail

NX_ROOT="${HOME}/.nexusbox"
NX_BOXES="${NX_ROOT}/boxes"
NX_SNAPSHOTS="${NX_ROOT}/snapshots"
NX_LAYERS="${NX_ROOT}/layers"
NX_TAGS="${NX_ROOT}/tags"
NX_HASH_BIN="${NX_ROOT}/bin/nexusbox-hash"

G='\033[92m'; Y='\033[93m'; R='\033[91m'; B='\033[94m'; C='\033[96m'
M='\033[95m'; W='\033[1;37m'; D='\033[2m'; N='\033[0m'; BOLD='\033[1m'

ok()    { printf "  ${G}[OK]${N} %s\n" "$*"; }
