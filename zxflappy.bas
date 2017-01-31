1 REM a Speccy Conversion by G Plowman ( Gazzapper Games)
2 PRINT AT 10,10;”LOADING GRAPHICS”
3 GO SUB 3000
5 BRIGHT 1
6 PAPER 7
7 INK 1: CLS
8 LET hscore=INT (0)
10 PRINT AT 1,0: INK 2: PRINT “\a\a\a\a \a \a\a\a\a \a\a\a\a \a\a\a\a \a \a”
20 INK 3: PRINT “\a \a \a \a \a \a \a \a \a \a”
21 INK 4: PRINT “\a\a\a \a \a\a\a\a \a\a\a\a \a\a\a\a \a\a\a\a”
22 INK 5: PRINT “\a \a \a \a \a \a \a”
24 INK 1: PRINT “\a \a \a \a \a \a \a”
26 INK 3: PRINT “\a \a \a \a \a \a \a”
28 INK 2: PRINT “\a \a\a\a\a\a \a \a \a \a”
30 PRINT “”
32 INK 4: PRINT “\a\a\a\a \a\a \a\a\a\a \a\a\a”
34 INK 2: PRINT “\a \a \a\a \a \a \a \a”
36 INK 1: PRINT “\a\a\a\a \a\a \a\a\a\a \a \a”
38 INK 4: PRINT “\a \a \a\a \a \a \a \a”
40 INK 3: PRINT “\a \a \a\a \a \a \a \a”
42 INK 5: PRINT “\a\a\a\a \a\a \a \a \a\a\a”
43 PRINT “”: INK 0
48 PRINT “SINCLAIR SPECTRUM CONVERSION”
49 PRINT “By Gary Plowman- Orig .Gears”
50 PRINT
51 PRINT ” PRESS A KEY TO START”
55 PRINT ” (CONTROLS : ANY KEY TO FLY”
56 INK 3: PRINT AT 19,0;”\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .”
60 FOR n=1 TO 30
62 PRINT AT 1,n;” \a”
64 PAUSE 5
66 PRINT AT 1,n;” \b”
68 BEEP .02,1
70 PAUSE 5
75 IF INKEY$<>”” THEN GO TO 200
80 NEXT n
85 PRINT AT 1,n;” “:
86 GO TO 60
200 LET score=INT (0): LET r=1
202 DIM x(10): DIM h(10)
203 LET pipes=INT (1)
204 LET fly=INT (12): LET anim=INT (0)
205 BRIGHT 1: PAPER 7: INK 2
206 CLS
210 PRINT AT 10,10;”G E T R E A D Y!”
220 PRINT “”
222 INK 1: PRINT AT 12,10;” \a”
226 PRINT
227 INK 2: PRINT ” Tap To Fly”
230 IF INKEY$=”” THEN GO TO 230
300 REM ****** START **********
302 FOR o=1 TO 10
303 LET h(o)=INT (RND*8)+1
305 NEXT o
306 FOR l=1 TO 10
307 REM LET h(l)=INT (RND*8+1)
308 LET x(l)=25+(l*5)
309 NEXT l
310 GO SUB 1000
600 GO TO 310
999 REM ***********************
1000 REM **** DRAW PIPES
1002 CLS
1010 INK 1: PRINT AT fly,10;” \a”: LET fly=fly+1
1011 INK 3: PRINT AT 19,0;”\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .”: PRINT AT 20,0;” G.Plowman- Orig. by D.Nguyen”
1012 IF anim=1 THEN INK 1: PRINT AT fly-1,10;” \b”
1013 LET anim=0
1016 LET r=r+1
1017 INK 3: PRINT AT 0,2;”SCORE: “;score: PRINT AT 0,20;”HI-SCORE:”;hscore
1018 IF INKEY$<>”” THEN LET fly=fly-2: BEEP .01,2
1030 FOR p=1 TO 10
1033 IF INKEY$<>”” THEN LET anim=INT (1)
1035 INK 4
1039 LET bh=h(p)*8: IF x(p)<30 AND x(p)>1 AND h(p)>0 THEN PLOT x(p)*8,3*8: DRAW 0,bh: DRAW 8,0: DRAW 0,-(bh)
1040 LET nh=INT ((13-(h(p)))*8): IF x(p)<29 AND x(p)>1 AND h(p)>0 THEN PLOT x(p)*8,150: DRAW 0,-nh: DRAW 8,0: DRAW 0,nh
1041 IF x(p)<1 THEN LET h(p)=INT (RND*8)+1
1042 IF x(p)<1 THEN LET x(p)=40
1050 INK 3: IF p=4 THEN PRINT AT 19,0;”\. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. \. ”
1052 LET x(p)=x(p)-1
1059 IF x(p)=9 AND h(p)>0 THEN BEEP .02,3: LET score=score+1
1070 IF x(p)=12 AND fly>19-h(p) THEN GO SUB 1200
1075 IF x(p)=12 AND fly<19-(h(p)+3) THEN GO SUB 1200
1076 IF fly=INT (20) THEN GO SUB 1200
1080 NEXT p
1100 RETURN
1200 REM **** DEAD ****
1210 PRINT AT 10,4;”OUCH!!”
1220 BEEP .3,7: BEEP .3,2: BEEP .5,-3
1240 PRINT AT 12,4;”HIT ENTER TO RESTART!”
1300 IF INKEY$=CHR$ (13) THEN GO TO 200
1310 GO TO 1300
3000 LET daa=0
3002 FOR n=0 TO 167
3005 READ DAA
3010 DATA 12,18,37,193,254,66,60,0,12,18,37,193,254,126,0,0,0,60,66,64,64,66,60,0,0,120,68,66,66,68,120,0,0,126,64,124,64,64,126,0,0,126,64,124,64,64,64,0,0,60,66,64,78,66,60,0,0,66,66,126,66,66,66,0,0,62,8,8,8,8,62,0,0,2,2,2,66,66,60,0,0,68,72,112,72,68,66,0,0,64,64,64,64,64,126,0,0,66,102,90,66,66,66,0,0,66,98,82,74,70,66,0,0,60,66,66,66,66,60,0,0,124,66,66,124,64,64,0,0,60,66,66,82,74,60,0,0,124,66,66,124,68,66,0,0,60,64,60,2,66,60,0,0,254,16,16,16,16,16,0,0,66,66,66,66,66,60,0,0
3030 POKE USR “a”+n,daa
3040 NEXT n
3050 RETURN

