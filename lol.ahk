#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 用鼠标拇指键切换 “仅针对目标英雄”的功能

Game := 0

XButton1::
Game := Round(1 - %Game%)
if (Game) {
	SendEvent {``` down}
} else {
	SendEvent {``` up}
}
return