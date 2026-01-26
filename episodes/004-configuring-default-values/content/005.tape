Include "../../resources/config.tape"

Sleep 1s
Run@1s "stellar env"
Type "stellar contract deploy --network local"
Sleep 3s
Backspace 15
Type "--source other-account"
Sleep 3s
