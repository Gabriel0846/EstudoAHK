#SingleInstance, Force
Loop
{   
    MsgBox % A_Index
    If (A_Index = 10)
    {
        Break
    }
}