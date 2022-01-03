#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

;Relord this script
vk1D & F1::Reload

;無変換+変換でueliを起動
vk1D & vk1C::!+Insert

;無変換+SpaceでEnter
vk1D & Space::Enter
;変換+SpaceでEnter
Space::
If GetKeyState("vk1C","P")
{
    send, ^{enter}
    return
}
send, {space}
return
;alt+spaceでalt+enter
Alt & Space::!Enter

;AltでIME無効(カタカナひらがなでIME有効)
Alt::
IME_SET(0)
Click,1000,1000,0 ;マウスカーソルの移動
Return

;変換でctrl
vk1C::Ctrl

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

;fを使う準備
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
    Send, {shiftdown}{home}{backspace}{shiftup} ;行のはじめまでbackspace
    return
}
send,{BackSpace}
Return
;無変換＋oでDelete
vk1D & o::
if GetKeyState("f", "P")
{
    Send, {shiftdown}{end}{delete}{shiftup} ;行のおわりまでdelete
    return
}
send,{Delete}
return

;無変換+ikjlで上下左右
vk1D & i::
if GetKeyState("f","P")
{
    Send, {Blind}{PgUp} ;PgUp
    return
}
Send, {Blind}{Up}
return
vk1D & k::
if GetKeyState("f", "P")
{
    Send, {Blind}{Pgdn} ;PgDn
    return
}
Send, {Blind}{down}
return
vk1D & j::
if GetKeyState("f","P")
{
    send, {Blind}{Home} ;Home
    Return
}
Send, {Blind}{left}
Return
vk1D & l::
if GetKeyState("f","P")
{
    send, {Blind}{End} ;End
    Return
}
Send, {blind}{right}
Return

;alt+上下左右
Alt & j::!Left
Alt & l::!Right
Alt & i::!Up
Alt & k::!Down