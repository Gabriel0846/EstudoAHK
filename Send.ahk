Esc::
Send, teste {Space}
SendRaw, teste! 
Send, {Space}
Return

A::
Loop, 100
{
    ControlSend, Edit1, %A_Index%, ahk_exe notepad.exe
    ControlSend, Edit1, {Enter}, ahk_exe notepad.exe
    Sleep, 1000
}
Return