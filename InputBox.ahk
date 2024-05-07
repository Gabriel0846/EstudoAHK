Loop
{
    InputBox, senha, Login, Digite sua senha, Hide, 200, 150
    If (ErrorLevel)
    {
        Break
    }
    If (senha = 1234)
    {
        MsgBox, Senha correta :)
        Break
    }
    Else
    {
        MsgBox, Senha incorreta :(
    }
}