#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%

;無変換+SpaceでEnter
vk1D & Space::Enter
;無変換でIME無効
vk1D::IME_SET(0)
;変換でIME有効
vk1C::IME_SET(1)
;ctrl+Enter
vk1C & Enter::^Enter
;切り取り
vk1C & x::^x
;コピー
vk1C & c::^c
;ペースト
vk1C & v::^v
;undo
vk1C & z::^z
;redo
vk1C & y::^y
;新規作成
vk1C & n::^n
;タブを閉じる
vk1C & w::^w
;変換+qでウィンドウを閉じる
vk1C & q::!F4

;無変換+変換でkeypirinhaを起動
vk1D & vk1C::F13
;無変換+tabでタスクビュー
vk1D & tab::#Tab

;無変換+uでBackspace
vk1D & u::BackSpace
;無変換＋oでDelete
vk1D & o::Delete
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