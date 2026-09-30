Dim PIN as Integer 
Dim secretPIN as Integer

PIN = 7890

Print 'Digite o PIN de acesso:'
Input secretPIN

While PIN <> secretPIN 
    Print 'PIN invalido. Tente novamente.'
    Input secretPIN
Wend

Print 'Transicao autorizada!'

Sleep

