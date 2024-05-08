Esc::
SetTimer, verificaJanela, 0
Loop
{
    ToolTip, %A_Index%
    Sleep, 500
}

verificaJanela:
IfWinNotActive, ahk_exe SciTE.exe
{
    WinGetActiveTitle, janelaAtiva
    WinClose, %janelaAtiva%
}
Return