#SingleInstance, Force

SetBatchLines, -1

FileSelectFolder, diretorio, C:, 0, Escolha um diretorio

InputBox, formato, Busca de arquivos, Digite um formato,, 200, 130
if (ErrorLevel || formato = "")
{
    ExitApp
}

arquivo := []

Loop, Files, %diretorio%*.%formato%, R
{
    ToolTip, Arquivos localizados: %A_Index%
    Arquivos.Push(A_LoopFileFullPath)
}

arquivo := FileOpen(A_ScriptDir,"\arquivos-localizados.txt", "W")

Loop, % arquivos.Length()
{
    arquivo.Write(arquivos[A_Index], "`n`n")
}

MsgBox, Fim