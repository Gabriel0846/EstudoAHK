Esc::
;IfWinActive, ahk_exe notepad.exe
;IfWinExist, ahk_exe notepad.exe
;IfWinNotActive, ahk_exe notepad.ex
#IfWinNotActive, ahk_exe notepad.ex
{
    MsgBox, janela não existe!
}
Else
{
    MsgBox, janela existe!
}
Return