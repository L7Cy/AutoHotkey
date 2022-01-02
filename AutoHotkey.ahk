#Persistent
#SingleInstance, Force
#NoEnv
#UseHook
#InstallKeybdHook
#InstallMouseHook
#HotkeyInterval, 2000
#MaxHotkeysPerInterval, 200
Process, Priority,, Realtime
SendMode Input
; 10msのコマンド間スリープを0にする (パフォーマンス改善による押しっぱなし対策)
SetBatchLines, -1
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

Return

#Include, %A_ScriptDir%\keybindings\main.ahk
;#Include, %A_ScriptDir%\tmp.ahk