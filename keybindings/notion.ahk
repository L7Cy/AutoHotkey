#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#ifwinactive,ahk_exe Notion.exe
~Alt & j::Send, ^{vkDB}
~Alt & l::Send, ^{vkDD}
~Alt & vk25::Send, ^{vkDB}
~Alt & vk27::Send, ^{vkDD}
~Alt & i::send, ^+{Up}
~Alt & k::send, ^+{Down}
~vk1C & vkDB::send,{Esc}
#IfWinActive
