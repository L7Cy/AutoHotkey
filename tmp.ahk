#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

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