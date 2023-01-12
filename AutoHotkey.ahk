; #NoEnv
; #SingleInstance, Force
; SendMode, Input
; SetBatchLines, -1
; SetWorkingDir, %A_ScriptDir%

F13 & a:: send "{Blind}{Home}"
F13 & e:: send "{Blind}{End}"

#HotIf WinActive("ahk_exe Code.exe")
F13 & p:: send "{Blind}{F12}p"
F13 & n:: send "{Blind}{F12}n"
#HotIf WinActive("ahk_exe WindowsTerminal.exe")
F13 & p:: send "{Blind}{CtrlDown}p{CtrlUp}"
F13 & n:: send "{Blind}{CtrlDown}n{CtrlUp}"
F13 & d:: send "{Blind}{CtrlDown}d{CtrlUp}"
#HotIf

F13 & p:: send "{Blind}{Up}"
F13 & n:: send "{Blind}{Down}"

F13 & f:: send "{Blind}{Right}"
F13 & b:: send "{Blind}{left}"

F13 & h:: send "{Blind}{BackSpace}"
F13 & d:: send "{Blind}{Del}"


#Include "AutoHotkey.d\F13_as_ctrl.ahk"

^F13:: send "{Blind}{CapsLock}"

; IntlRo as '_' (like mac)
sc073:: send "{Blind}_"
F13 & sc073:: send "{Blind}{U+001f}"

RAlt::RCtrl
