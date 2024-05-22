#Persistent
SetTitleMatchMode, 2

WinTitle := "Excel"

BatchFilePath := "D:teste.bat"

WindowWasOpen := False

SetTimer, CheckWindow, 1000
Return

CheckWindow:
IfWinExist, %WinTitle%
{
    WindowWasOpen := True
}
else
{
    if (WindowWasOpen)
    {
        Run, %BatchFilePath%
        WindowWasOpen := False
    }
}
Return
