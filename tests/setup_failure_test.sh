#!/usr/bin/env bash
set -u

repo_root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
temp_dir=$(mktemp -d)
trap 'rm -rf "$temp_dir"' EXIT
mkdir -p "$temp_dir/bin" "$temp_dir/work"

cat > "$temp_dir/bin/wget" <<'EOF'
#!/usr/bin/env bash
exit 42
EOF
cat > "$temp_dir/bin/tar" <<'EOF'
#!/usr/bin/env bash
touch "$SETUP_TEST_TAR_MARKER"
EOF
chmod +x "$temp_dir/bin/wget" "$temp_dir/bin/tar"

set +e
(
  cd "$temp_dir/work"
  PATH="$temp_dir/bin:$PATH" \
  SETUP_TEST_TAR_MARKER="$temp_dir/tar-ran" \
  bash "$repo_root/setup.sh"
)
status=$?
set -e

if [ "$status" -eq 0 ]; then
  echo "setup.sh must fail when the download fails" >&2
  exit 1
fi
if [ -e "$temp_dir/tar-ran" ]; then
  echo "setup.sh must not extract an archive after a failed download" >&2
  exit 1
fi

echo "PASS: setup.sh stops after a failed download"
