^f::
#NoEnv 
SendMode Input 
SetWorkingDir %A_ScriptDir%

; Data atual
DataAtual := A_Now

; Subtrai dois dias
DoisDias := SubStr(DataAtual, 1, 8) - 2

; Formata a data de dois dias atrás
DoisDiasFormatado := SubStr(DoisDias, 7, 2) SubStr(DoisDias, 5, 2) SubStr(DoisDias, 1, 4)

; Digita a data de dois dias atrás
SendInput, %DoisDiasFormatado%
return

^g::
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Data atual
DataAtual := A_Now

; Subtrai um dia
UmDia := SubStr(DataAtual, 1, 8) - 1

; Formata a data de um dia atrás
UmDiaFormatado := SubStr(UmDia, 7, 2) SubStr(UmDia, 5, 2) SubStr(UmDia, 1, 4)

; Insere a data de um dia atrás no local do cursor
SendInput, %UmDiaFormatado%
return


^1::
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

CaminhoArquivo := ""

Run, "%CaminhoArquivo%"
return
