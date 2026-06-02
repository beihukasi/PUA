#!/usr/bin/env bash
#
# install.sh — Install PUA Advice as a Claude Code Skill
#
# Copies SKILL.md and supporting files into ~/.claude/skills/pua-advice/
# so Claude Code can use the knowledge base when providing social interaction advice.
#
# Usage:
#   bash scripts/install.sh          # install to default location
#   bash scripts/install.sh --force  # overwrite existing installation
#   bash scripts/install.sh --help   # show help

set -euo pipefail

# --- Configuration -----------------------------------------------------------
TARGET_DIR="${HOME}/.claude/skills/pua-advice"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPT_DIR}")"

FORCE=false

# --- Help --------------------------------------------------------------------
usage() {
    cat << 'EOF'
install.sh — Install PUA Advice as a Claude Code Skill

Usage:
  bash scripts/install.sh [OPTIONS]

Options:
  --force    Overwrite existing installation without prompting
  --help     Show this help message and exit

What it does:
  - Creates ~/.claude/skills/pua-advice/ if it does not exist
  - Copies SKILL.md and the cases/ and books/ directories into it
  - Makes Claude Code aware of the skill on next launch
EOF
    exit 0
}

# --- Parse arguments ---------------------------------------------------------
for arg in "$@"; do
    case "$arg" in
        --force) FORCE=true ;;
        --help)  usage ;;
        *)
            echo "Unknown option: $arg"
            echo "Run with --help for usage information."
            exit 1
            ;;
    esac
done

# --- Pre-flight checks -------------------------------------------------------
echo "==> Checking environment..."

if [ ! -f "${PROJECT_DIR}/SKILL.md" ]; then
    echo "ERROR: SKILL.md not found in ${PROJECT_DIR}"
    echo "Make sure you are running this script from the project root or scripts/ directory."
    exit 1
fi

if [ -d "${TARGET_DIR}" ] && [ "${FORCE}" != "true" ]; then
    echo ""
    echo "WARNING: ${TARGET_DIR} already exists."
    echo "Use --force to overwrite, or remove it manually first."
    echo ""
    read -r -p "Overwrite existing installation? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) ;;
        *) echo "Aborted."; exit 0 ;;
    esac
fi

# --- Install -----------------------------------------------------------------
echo "==> Installing to ${TARGET_DIR}..."

# Remove existing if forcing
if [ -d "${TARGET_DIR}" ]; then
    rm -rf "${TARGET_DIR}"
fi

mkdir -p "${TARGET_DIR}"

# Copy SKILL.md
cp "${PROJECT_DIR}/SKILL.md" "${TARGET_DIR}/SKILL.md"
echo "    Copied SKILL.md"

# Copy cases directory
if [ -d "${PROJECT_DIR}/cases" ]; then
    cp -r "${PROJECT_DIR}/cases" "${TARGET_DIR}/cases"
    echo "    Copied cases/"
else
    echo "    WARNING: cases/ directory not found, skipping."
fi

# Copy books directory
if [ -d "${PROJECT_DIR}/books" ]; then
    cp -r "${PROJECT_DIR}/books" "${TARGET_DIR}/books"
    echo "    Copied books/"
else
    echo "    WARNING: books/ directory not found, skipping."
fi

# --- Verify ------------------------------------------------------------------
echo ""
echo "==> Verifying installation..."

FAILURES=0

check_file() {
    if [ -f "$1" ]; then
        echo "    OK  $1"
    else
        echo "    MISSING  $1"
        FAILURES=$((FAILURES + 1))
    fi
}

check_file "${TARGET_DIR}/SKILL.md"
check_file "${TARGET_DIR}/cases/TEMPLATE.md"
check_file "${TARGET_DIR}/cases/CONTRIBUTING.md"
check_file "${TARGET_DIR}/cases/example-cafe.md"

echo ""
if [ "${FAILURES}" -eq 0 ]; then
    echo "==> Installation successful!"
    echo ""
    echo "The PUA Advice skill is now available at:"
    echo "  ${TARGET_DIR}"
    echo ""
    echo "Restart Claude Code or start a new session to use it."
else
    echo "==> Installation completed with ${FAILURES} warning(s)."
    echo "    The skill may not work as expected. Check the missing files above."
fi

exit 0
