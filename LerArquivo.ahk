FileEncoding, UTF-8

Loop
{
    FileReadLine, leitura, lista.txt, %A_Index%
    If (leitura = "")
    {
        Break
    }
    MsgBox, % leitura
    leitura := ""
}

;Arroz
;Feijão
;Macarrão
;Batata
;Carne