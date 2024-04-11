#Requires AutoHotkey v2.0
#SingleInstance Force

Hotkey "F1", Start
Hotkey "F2", Stop
Hotkey "F3", ShowActiveWinName

Start(k) {
    SetTimer(SendKey, 60000)
}

Stop(k) {
    SetTimer(SendKey, 0)
}

ShowActiveWinName(k) {
    MsgBox "Current Window " WinGetTitle("A")
}

SendKey() {
    if (WinGetTitle("A") == "Dragon's Dogma 2") {
        Send "{F12}"
    }
}