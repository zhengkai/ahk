#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Game := 0

XButton1::
Game := Round(1 - %Game%)
if (Game) {
	SendEvent {l down}
} else {
	SendEvent {l up}
}
return