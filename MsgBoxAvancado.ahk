MsgBox, 64, Sucesso, Processo fonalizado!

MsgBox, 48, Aviso, Falha no processo!

MsgBox, 16, Aviso, Falha no processo!

MsgBox, 36, Aviso, Deseja continuar?
IfMsgBox, Yes
{
    MsgBox, Você clicou no "Sim"
}
Else
{
    MsgBox, Você clicou no "Não"
}