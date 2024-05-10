CoordMode, Pixel, Screen
 
Esc::
 
Loop
{
    ImageSearch, x, y, 0, 0, 1366, 768, C:\Users\nomeDoUsuario\Desktop\documentos.png
    if (ErrorLevel = 0)
    {
        Click, %x%, %y%
        break
    }
}
 
return