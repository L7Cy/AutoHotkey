#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#ifwinactive,ahk_exe osu!.exe
vk1C & x::
click 488,1020
sleep, 70
Click 980,606
sleep, 70
Click 963,900
Return
~Alt & j::click 128,1026
~vk1D & i::!Left
~vk1D & k::!Right
~Alt & i::click 1903,145
~Alt & k::click 1874,818
~vk1C & r::click 1874,818
#IfWinActive
