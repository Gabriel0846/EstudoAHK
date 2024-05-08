Esc::
Goto, msg1
Return

Del::
Goto, msg2
Return

msg1:
MsgBox, Inicio
Gosub, meio
MsgBox, Fim
Return

msg2:
MsgBox, mensagem 2
Return

meio:
MsgBox, Meio
Return