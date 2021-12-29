﻿#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%

;無変換でIME無効
vk1D::IME_SET(0)
;変換でctrl
vk1C::Ctrl

;無変換+変換でkeypirinhaを起動
vk1D & vk1C::F13
;無変換+tabでタスクビュー
vk1D & tab::#Tab

;無変換+ikjlで上下左右
vk1D & i::Up
vk1D & k::Down
vk1D & j::
    IfWinActive ahk_exe firefox.exe ;firefoxでは戻る
    {
        Send, !{Left}
    }Else IfWinActive ahk_class CabinetWClass ;エクスプローラーでは戻る
    {
        Send, !{Left}
    }Else
    {
        Send, {Blind}{left}
    }
Return
vk1D & l::
    IfWinActive ahk_exe firefox.exe ;firefoxでは進む
    {
        Send, !{Right}
    }Else IfWinActive ahk_class CabinetWClass ;エクスプローラーでは進む
    {
        Send, !{Right}
    }Else
    {
        Send, {blind}{right}
    }
Return

;無変換+SpaceでEnter
vk1D & Space::Enter

;無変換+jでBackspace
vk1D & u::BackSpace
;無変換＋lでDelete
vk1D & o::Delete

;無変換+;でmmdd
vk1D & vkBB::
    Clipboard = %A_Mon%%A_MDay%
    send, ^v
Return
;無変換+:でhh:mm
vk1D & vkBA::
    Clipboard = %A_Hour%:%A_Min%
    send, ^v
Return