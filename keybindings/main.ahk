#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

;Relord this script
~vk1C & F1::Reload
~vk1C & Alt::^F1 ;keypirinha

;変換でctrl
*vk1C::Ctrl
;無変換を無効
*vk1D::Return

;AltでIME無効(カタカナひらがなでIME有効)
*Alt::
    IME_SET(0)
Return

;ctrl+[でesc+IME無効
~vk1C & vkDB::
    send,{Esc}
    IME_SET(0)
Return

#j::#Left
#l::#Right
#i::#Up
#k::#Down

;変換+qでウィンドウを閉じる
~vk1C & q::Send, !{F4}

#If getkeystate("vk1D","P")
f::Return
#If

;無変換+uでBackspace
~vk1D & u::
    if GetKeyState("f", "P")
    {
        Send, {shiftdown}{home}{BackSpace}{ShiftUp} ;カーソルの左を削除
        Return
    }
    if GetKeyState("vk1C", "P")
    {
        Send, {CtrlDown}{Left}{shiftdown}{Right}{CtrlUp}{shiftup} ;単語単位でbackspace
        Send, {backspace}
        return
    }
    send,{BackSpace}
Return

;無変換＋oでDelete
~vk1D & o::
    if GetKeyState("f", "P")
    {
        Send, {shiftdown}{End}{Delete}{ShiftUp} ;カーソルの右を削除
        Return
    }
    if GetKeyState("vk1C", "P")
    {
        Send, {CtrlDown}{Right}{shiftdown}{Left}{CtrlUp}{shiftup} ;単語単位でdelete
        Send, {delete}
        return
    }
    send,{Delete}
return

;無変換+ikjlで上下左右
~vk1D & i::
    if GetKeyState("f","P")
    {
        Send, {Blind}{PgUp} ;PgUp
        return
    }
    Send, {Blind}{Up}
return
~vk1D & k::
    if GetKeyState("f", "P")
    {
        Send, {Blind}{Pgdn} ;PgDn
        return
    }
    Send, {Blind}{down}
return
~vk1D & j::
    if GetKeyState("f","P")
    {
        send, {Blind}{Home} ;Home
        Return
    }
    Send, {Blind}{left}
Return
~vk1D & l::
    if GetKeyState("f","P")
    {
        send, {Blind}{End} ;End
        Return
    }
    Send, {blind}{right}
Return

;alt+上下左右
~Alt & j::!Left
~Alt & l::!Right
~Alt & i::!Up
~Alt & k::!Down
