#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#ifwinactive,ahk_exe WorkFlowy.exe
~vk1C & f::
send,{Esc}
Return
~alt & i::
send,!+{Up}
Return
~alt & k::
send,!+{Down}
Return
~vk1C & Space::^Space
#IfWinActive
