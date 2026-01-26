Include "../../resources/config.tape"
Set font_size 45
Pause
Send "presenterm -c ../../resources/presenterm.yml resources/001-slide.md\n"
# Send "slides resources/001-slide.md\n"
WaitUntil /Commands/
Sleep 200ms
Resume

Sleep 2s
Right
Sleep 2s
Right
Sleep 2s
Right
Sleep 2s
Right
Sleep 2s
