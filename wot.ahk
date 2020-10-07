#NoEnv
; #Warn
SendMode Input

Loop {
    if (WinActive("《坦克世界》客户端")) {
        send, !{F12}
    }
    Sleep, 60000
}
