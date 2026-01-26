set -e

STELLAR_PATH=$(which stellar 2>/dev/null || true)

if [[ -x "$STELLAR_PATH" ]]; then
  if command -v brew &> /dev/null && brew list stellar-cli &> /dev/null; then
    brew remove stellar-cli
  elif [[ "$STELLAR_PATH" == "/usr/local/bin/stellar" ]]; then
    sudo rm -rf "$STELLAR_PATH"
  else
    rm -rf "$STELLAR_PATH"
  fi
fi

echo "::ready::"
