10 ' --- Slot 0
20 ' color 2
30 DATA 01,03,07,03,07,0F,1F,0F,1F,3F,1F,3F,7F,FE,FC,00
40 DATA 80,C0,E0,C0,E0,F0,F8,F0,F8,FC,F8,FC,FE,7F,3F,00
50 ' color 6
60 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,01,03,01
70 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,80,C0,80
80 DATA *
90 SCREEN 2,2,0: GOSUB 10000
100 PUT SPRITE 0,(0,0),2,0:PUT SPRITE 1,(0,0),6,1
110 GOTO 110
10000 REM -- LOAD SPRITES
10010 S=BASE(9)
10020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 10020
