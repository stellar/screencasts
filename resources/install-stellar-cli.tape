Pause
Send """
set -e

if [[ "$(uname)" == "Darwin" ]]; then
  if ! command -v stellar &> /dev/null; then
    brew install stellar-cli
  fi
fi

echo "::done::"
"""
WaitUntilDone
Clear
Resume
