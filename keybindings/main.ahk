#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

;Relord this script
~vk1D & F1::Reload
~vk1C & Alt::^F1 ;keypirinha

;変換でctrl
*vk1C::Ctrl
;無変換を無効
*vk1D::Return

; ;無変換+SpaceでEnter
; ~vk1D & Space::Enter
; ;変換+SpaceでEnter
; ~vk1C & Space::^Enter
; ;alt+spaceでalt+enter
; ~Alt & Space::!Enter

;AltでIME無効(カタカナひらがなでIME有効)
*Alt::
    IME_SET(0)
    ; Click,1000,1000,0 ;マウスカーソルの移動
Return

;変換+qでウィンドウを閉じる
~vk1C & q::Send, !{F4}

#If getkeystate("vk1D","P")
f::Return
#If

; #If getkeystate("vk1D","P")
; w::LWin
; #If

;無変換+uでBackspace
~vk1D & u::
    if GetKeyState("f", "P")
    {
        If WinActive("ahk_exe WindowsTerminal.exe")
        {
            Send, ^{u}
            return
        }
        Send, {shiftdown}{home}{BackSpace}{ShiftUp} ;カーソルの左を削除
        Return
    }
    if GetKeyState("vk1C", "P")
    {
        If WinActive("ahk_exe WindowsTerminal.exe")
        {
            Send, !^{h}
            return
        }
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
        If WinActive("ahk_exe WindowsTerminal.exe")
        {
            Send, ^{k}
            return
        }
        Send, {shiftdown}{End}{Delete}{ShiftUp} ;カーソルの右を削除
        Return
    }
    if GetKeyState("vk1C", "P")
    {
        If WinActive("ahk_exe WindowsTerminal.exe")
        {
            Send, !{d}
            return
        }
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
