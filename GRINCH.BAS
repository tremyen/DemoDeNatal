30 DATA 00,03,02,02,06,0C,18,36,66,50,62,50,67,28,30,1F
40 DATA 00,80,80,80,C0,60,30,D8,CC,14,8C,14,CC,2C,18,F0
60 DATA 00,00,01,01,01,03,07,09,19,2F,1D,2F,18,17,0F,00
70 DATA 00,00,00,00,00,80,C0,20,30,E8,70,E8,30,D0,E0,00
80 DATA *
90 SCREEN 2,2,0: GOSUB 10010
100 PUT SPRITE 0,(0,0),1,0:PUT SPRITE 1,(0,0),2,1
110 GOTO 110
10010 S=BASE(9)
10020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 10020
