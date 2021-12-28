#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%

;無変換でIME無効
vk1D::IME_SET(0)
;変換でIME有効
vk1C::IME_SET(1)

;無変換+ikjlで上下左右
vk1D & i::Up
vk1D & k::Down
vk1D & j::Left
vk1D & l::Right

;無変換+SpaceでEnter
vk1D & Space::Enter

;無変換+jでBackspace
vk1D & u::BackSpace
;無変換＋lでDelete
vk1D & o::Delete

;無変換+;でmmdd
vk1D & vkBB::send, %A_Mon%%A_MDay%
;無変換+:でhh:mm
vk1D & vkBA::send, %A_Hour%:%A_Min%