Include "resources/config.tape"
Require "curl"

Run "curl -fsSL https://github.com/stellar/stellar-cli/raw/main/install.sh | sh -s"
WaitUntil /Stellar CLI installed successfully/
Wait 3s
