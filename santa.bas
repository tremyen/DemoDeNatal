10 ' --- Slot 0
20 ' color 1
30 DATA 01,03,06,0C,18,10,10,12,10,10,12,09,08,0C,06,03
40 DATA F0,18,6C,37,19,09,0F,48,08,08,48,90,30,20,60,C0
50 ' color 6
60 DATA 00,00,01,03,04,0F,00,00,00,00,00,00,00,00,00,00
70 DATA 00,E0,90,C8,20,F0,00,00,00,00,00,00,00,00,00,00
80 ' color 10
90 DATA 00,00,00,00,00,00,00,05,07,00,00,00,00,00,00,00
100 DATA 00,00,00,00,00,00,00,A0,E0,00,00,00,00,00,00,00
110 ' color 15
120 DATA 00,00,00,00,03,00,0F,08,08,0F,0D,06,07,03,01,00
130 DATA 00,00,00,00,C6,06,F0,10,10,F0,B0,60,C0,C0,80,00
140 DATA *
150 SCREEN 2,2,0: GOSUB 10000
160 PUT SPRITE 0,(0,0),1,0:PUT SPRITE 1,(0,0),6,1:PUT SPRITE 2,(0,0),10,2:PUT SPRITE 3,(0,0),15,3
170 GOTO 170
10000 REM -- LOAD SPRITES
10010 S=BASE(9)
10020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 10020
