FileSelectFolder, diretorio, C:, 0, Escolha um diretorio

InputBox, formato, Localizador de arquivos, Digite um formato,, 250, 130,,,,, Exemplo: txt`, jpg`, png`, gif`, exe`, etc...
formato := Trim(formato)
if formato is Space
{
    ExitApp
}

if (formato = "" || formato = "Exemplo: txt, jpg, png, gif, exe, etc..." || ErrorLevel)
{
    ExitApp
}

arquivo := []

SetBatchLines, -1

ToolTip, Localizando arquivos...

Loop, Files, %diretorio%*.%formato%, R
{
    ToolTip % "Arquivos " . formato . " encontrados - " . A_Index
    arquivos.Push(A_LoopFileFullPath)
    ; Adiciona esta linha para depurar
    MsgBox, 0, Debug, Arquivo encontrado: %A_LoopFileFullPath%
}

ToolTip

if (arquivos[1])
{
    MsgBox, 64, Sucesso, % "Foram encontrados " . arquivos.Length() . " arquivo(s) com o formato " . formato
    MsgBox, 36, Aviso, Deseja visualizar os arquivos encontrados?
    IfMsgBox, Yes
    {
        arquivo := FileOpen(A_ScriptDir . "\arquivos_" . formato . "_localizados.txt", "W")
        Loop % arquivos.Length()
        {
            arquivo.Write(arquivos[A_Index] . "`r`n")
        }
    }
    Else
    {
        ExitApp
    }

    Run, %A_ScriptDir%\arquivos_%formato%_localizados.txt
    ExitApp
}
Else
{
    MsgBox, 48, Aviso, Não foram encontrados arquivos para o formato buscado!
    ExitApp
}

Esc::
ExitApp
