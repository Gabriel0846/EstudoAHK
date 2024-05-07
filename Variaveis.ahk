num1 = 5
num2 = 10

soma := num1 + num2

MsgBox, %soma%

;-----------------------------

lista := []

lista.Push(num1, num2)

lista.Remove(1)

MsgBox % lista.Length()

MsgBox % lista[1]