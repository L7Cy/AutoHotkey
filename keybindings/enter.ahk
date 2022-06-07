#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;無変換+SpaceでEnter
~vk1D & Space::Enter
;変換+SpaceでEnter
~vk1C & Space::^Enter
;alt+spaceでalt+enter
~Alt & Space::!Enter
