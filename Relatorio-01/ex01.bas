Dim peso As Single
Dim agua As Single
Dim meta As Single

Print 'Digite seu peso em kg:'
Input peso

Print 'Digite a quantidade de agua em ml que você inseriu no dia:'
Input agua

meta = peso * 35

IF agua > = meta THEN 
    PRINT "Meta atingida"
ELSE
    PRINT "Meta nao atingida"
END IF

Sleep
