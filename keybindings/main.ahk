#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

vk1D & F1::Reload

;無変換+SpaceでEnter
vk1D & Space::Enter
;AltでIME無効(カタカナひらがなでIME有効)
Alt::
IME_SET(0)
Click,1000,1000,0
Return

Alt & Space::!Enter

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
Space::
If GetKeyState("vk1C","P")
{
    send, ^{enter}
    return
}
send, {space}
return

f::
if GetKeyState("vk1D","P")
{
    Return
}
Send, f
Return
;無変換+uでBackspace
vk1D & u::
if GetKeyState("f", "P")
{
    Send, {shiftdown}{home}{backspace}{shiftup}
    return
}
send,{BackSpace}
Return
;無変換＋oでDelete
vk1D & o::
if GetKeyState("f", "P")
{
    Send, {shiftdown}{end}{delete}{shiftup}
    return
}
send,{Delete}
return
;無変換+ikjlで上下左右
vk1D & i::
if GetKeyState("f","P")
{
    Send, {Blind}{PgUp}
    return
}
Send, {Blind}{Up}
return

vk1D & k::
if GetKeyState("f", "P")
{
    Send, {Blind}{Pgdn}
    return
}
Send, {Blind}{down}
return

vk1D & j::
if GetKeyState("f","P")
{
    send, {Blind}{Home}
    Return
}
Send, {Blind}{left}
Return

vk1D & l::
if GetKeyState("f","P")
{
    send, {Blind}{End}
    Return
}
Send, {blind}{right}
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