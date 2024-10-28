#Requires AutoHotkey v2.0
#SingleInstance Force

Hotkey "F1", Start
Hotkey "F2", Fast
Hotkey "F3", Stop
Hotkey "F5", ShowActiveWinName

Start(k) {
    SetTimer(SendKey, 60000)
}

Fast(k) {
    SetTimer(SendKey, 6000)
}

Stop(k) {
    SetTimer(SendKey, 0)
}

ShowActiveWinName(k) {
    s := WinGetTitle("A")
    if s == "微信" {
        return
    }
    if RegExMatch(s, " Google Chrome$") {
        return
    }
    if RegExMatch(s, " 文件资源管理器$") {
        return
    }
    MsgBox "Current Window: " s 
    A_Clipboard := s
}

SendKey() {
    Send "{F12}"
}