#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Required for multi-line sending.
SetWorkingDir %A_ScriptDir%  ; Ensures execution from script directory.
WinActivate ahk_exe !ErrorLevel
!Left::
    Send {Windows Up} {LEFT ARROW}
    Sleep 15
    Send {Windows Left Arrow}
return