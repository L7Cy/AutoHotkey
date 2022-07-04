#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#ifwinactive,ahk_exe WindowsTerminal.exe
  ~vk1D & u::
    if GetKeyState("f", "P")
    {
      Send,^{u}
      Return
    }
    if GetKeyState("vk1C", "P")
    {
      Send, !^{h}
      return
    }
    send,{BackSpace}
Return
  ~vk1D & o::
    if GetKeyState("f", "P")
    {
      Send, ^{k}
      return
    }
    if GetKeyState("vk1C", "P")
    {
      Send, !{d}
      return
    }
    send,{Delete}
Return
#ifwinactive
