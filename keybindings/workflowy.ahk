#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode,2

#ifwinactive,ahk_exe WorkFlowy.exe
~vk1C & f::
send,{Esc}
Return
~vk1C & p::
send,^{k}
Return
~alt & i::
send,!+{Up}
Return
~alt & k::
send,!+{Down}
Return
~vk1C & Space::^Space
#IfWinActive

#IfWinActive,ahk_exe firefox.exe
~vk1C & f::
send,{Esc}
Return
~vk1C & p::
send,^{k}
Return
~alt & i::
send,!+{Up}
Return
~alt & k::
send,!+{Down}
Return
~vk1C & Space::^Space
#IfWinActive
