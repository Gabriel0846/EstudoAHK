 A::
 Loop, 50
 {
    FileAppend, %A_Index%`n, teste.txt
 }
MsgBox, contagem finalizada!
Return

B::
arquivo := FileOpen("C:\Users\Terminal17\Documents\GitHub\EstudoAHK\teste.txt", "rw")
Loop, 15
{
    arquivo.Write(A_Index . "`n")
}
MsgBox, contagem finalizada!
Return