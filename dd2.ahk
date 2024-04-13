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
    MsgBox "Current Window: " s
    A_Clipboard := s
}

SendKey() {
    if (WinGetTitle("A") == "Dragon's Dogma 2") {
        Send "{F12}"
    }
}