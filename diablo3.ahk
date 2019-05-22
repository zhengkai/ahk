F1::
SetTimer, Timer_Spam, 100
return

F2::
SetTimer, Timer_Spam, Off
return

Timer_Spam:
    if (!WinActive("暗黑破壞神III")) {
        return
    }
    Send, R
return
