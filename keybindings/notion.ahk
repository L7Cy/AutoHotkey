#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#ifwinactive,ahk_exe Notion.exe
~Alt & j::Send, ^{vkDB}
~Alt & l::Send, ^{vkDD}
~Alt & i::send, ^+{Up}
~Alt & k::send, ^+{Down}
~vk1C & vkDB::send,{Esc}
~vk1C & tab::click 383,237
~vk1C & vk31::
Sleep, 200
click 57,276
Return
~vk1C & vk32::
Sleep, 200
click 57,309
Return
~vk1C & vk33::
Sleep, 200
click 57,342
Return
~vk1C & vk34::
Sleep, 200
click 57,375
Return
~vk1C & vk35::
Sleep, 200
click 57,408
Return
~vk1C & vk36::
Sleep, 200
click 57,441
Return
#IfWinActive
