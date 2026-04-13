Podłączyć do portu PI mikrokontrolera 89S8253 osiem diod LED. Następnie
napisać program, który będzie realizował funkcję 8-bitowego licznika binarnego
liczącego „w górę”. Do odmierzania czasu wykorzystać programowe opóźnienie.

ORG 0
START:
    MOV A, #11111111B  ;

PETLA:
    MOV P0, A
    ACALL OPOZNIENIE
    DEC A
    SJMP PETLA

OPOZNIENIE:
    MOV R5, #10
D3:
    MOV R7, #255
D1:
    MOV R6, #255
D2:
    DJNZ R6, D2
    DJNZ R7, D1
    DJNZ R5, D3
    RET
END
