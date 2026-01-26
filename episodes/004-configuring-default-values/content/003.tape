Include "../../resources/config.tape"

Pause
Send "stellar keys rm default || true\n"
Clear
Sleep 1s
Resume

Sleep 1s
Run@1s "stellar keys generate default"
Run@4s "stellar keys use default"
