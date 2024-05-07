msg(nome) {
    MsgBox, %nome%
}

msg("João")
msg("Maria")

somar(a, b) {
    Return a + b
}

MsgBox % somar(5, 5)