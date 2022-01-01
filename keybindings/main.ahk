#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

;無変換+SpaceでEnter
vk1D & Space::Enter
;AltでIME無効(カタカナひらがなでIME有効)
Alt::
IME_SET(0)
Click,1000,1000,0
Return

;変換でctrl
vk1C::Ctrl

;無変換+変換でkeypirinhaを起動
vk1D & vk1C::F13
;無変換+tabでタスクビュー
vk1D & tab::#Tab
;変換+qでウィンドウを閉じる
q::
if GetKeyState("vk1C","P")
{
    Send, !{F4}
    Return
}
send, q
Return

;無変換+uでBackspace
vk1D & u::BackSpace
;無変換＋oでDelete
vk1D & o::Delete
;無変換+ikjlで上下左右
vk1D & i::Up
vk1D & k::Down
vk1D & j::
    IfWinActive, [ahk_exe firefox.exe, , スプレッドシート, ] ;firefoxでは戻る
    {
        Send, {Blind}{left}
        ;Send, !{Left}
    }Else IfWinActive ahk_class CabinetWClass ;エクスプローラーでは戻る
    {
        ;Send, !{Left}
        Send, {Blind}{left}
    }Else
    {
        Send, {Blind}{left}
    }
Return
vk1D & l::
    IfWinActive, [ahk_exe firefox.exe, , スプレッドシート, ] ;firefoxでは進む
    {
        Send, {blind}{right}
        ;Send, !{Right}
    }Else IfWinActive ahk_class CabinetWClass ;エクスプローラーでは進む
    {
        Send, {blind}{right}
        ;Send, !{Right}
    }Else
    {
        Send, {blind}{right}
    }
Return

Alt & j::!Left
Alt & l::!Right
Alt & i::!Up
Alt & k::!Down

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