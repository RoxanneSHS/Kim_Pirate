BEGIN ~IMPKIM2~
BEGIN ~IMPKIM~

IF ~Global("impfight","GLOBAL",0)~ THEN BEGIN 0
SAY @0
  IF ~~ THEN EXTERN IMPKIM2 0
END

IF ~~ THEN BEGIN 1
SAY @1
  IF ~~ THEN EXTERN IMPKIM2 1
END

IF ~~ THEN BEGIN 2
SAY @2
  IF ~~ THEN EXTERN IMPKIM2 2
END

IF ~~ THEN BEGIN 3
SAY @3
  IF ~~ THEN EXTERN IMPKIM2 3
END

IF ~~ THEN BEGIN 4
SAY @4
  IF ~~ THEN EXTERN IMPKIM2 4
END

IF ~~ THEN BEGIN 5
SAY @5
  IF ~~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 6
SAY @10
  IF ~~ THEN EXTERN IMPKIM2 5
END

IF ~~ THEN BEGIN 7
SAY @11
  IF ~~ THEN EXTERN IMPKIM2 6
END

IF ~~ THEN BEGIN 8
SAY @12
  IF ~~ THEN EXTERN IMPKIM2 7
END


IF ~~ THEN BEGIN 9
SAY @13
  IF ~~ THEN EXTERN IMPKIM2 8
END

IF ~~ THEN BEGIN 10
SAY @14
  IF ~~ THEN EXTERN IMPKIM2 9
END

IF ~~ THEN BEGIN 11
SAY @15
  IF ~~ THEN EXTERN IMPKIM2 10
END

IF ~~ THEN BEGIN 12
SAY @16
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 17
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 13
SAY @19
  IF ~~ THEN EXTERN IMPKIM2 11
END

IF ~~ THEN BEGIN 14
SAY @20
  IF ~~ THEN EXTERN IMPKIM2 12
END

IF ~~ THEN BEGIN 15
SAY @21
  IF ~~ THEN EXTERN IMPKIM2 13
END

IF ~~ THEN BEGIN 16
SAY @22
  IF ~~ THEN REPLY @17 GOTO 34
  IF ~~ THEN REPLY @18 GOTO 17
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 17
SAY @23
  IF ~~ THEN EXTERN IMPKIM2 14
END

IF ~~ THEN BEGIN 18
SAY @24
  IF ~~ THEN EXTERN IMPKIM2 15
END

IF ~~ THEN BEGIN 19
SAY @25
  IF ~~ THEN EXTERN IMPKIM2 16
END

IF ~~ THEN BEGIN 20
SAY @26
  IF ~~ THEN REPLY @27 GOTO 21
  IF ~~ THEN REPLY @28 GOTO 33
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 21
SAY @29
  IF ~~ THEN EXTERN IMPKIM2 17
END

IF ~~ THEN BEGIN 22
SAY @30
  IF ~~ THEN EXTERN IMPKIM2 18
END

IF ~~ THEN BEGIN 23
SAY @31
  IF ~~ THEN EXTERN IMPKIM2 19
END

IF ~~ THEN BEGIN 24
SAY @32
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
SAY @33
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
SAY @34
  IF ~~ THEN REPLY @35 EXTERN IMPKIM2 20
  IF ~~ THEN REPLY @36 EXTERN IMPKIM2 20
  IF ~~ THEN REPLY @37 EXTERN IMPKIM2 20
  IF ~~ THEN REPLY @38 EXTERN IMPKIM2 23
  IF ~~ THEN REPLY @39 EXTERN IMPKIM2 20
  IF ~~ THEN REPLY @40 EXTERN IMPKIM2 20
  IF ~~ THEN REPLY @41 EXTERN IMPKIM2 20
  IF ~~ THEN REPLY @42 EXTERN IMPKIM2 20
  IF ~~ THEN REPLY @43 GOTO 6
END


IF ~~ THEN BEGIN 27
SAY @44
  IF ~~ THEN EXTERN IMPKIM2 21
END


IF ~~ THEN BEGIN 28
SAY @45
  IF ~~ THEN EXTERN IMPKIM2 22
END


IF ~~ THEN BEGIN 29
SAY @46
  IF ~~ THEN DO ~SetGlobal("impfight","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN 30
SAY @47
  IF ~~ THEN EXTERN IMPKIM2 24
END


IF ~~ THEN BEGIN 31
SAY @48
  IF ~~ THEN EXTERN IMPKIM2 25
END

IF ~~ THEN BEGIN 32
SAY @49
  IF ~~ THEN DO ~
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("impfight","GLOBAL",3) ~ EXIT
END


IF ~~ THEN BEGIN 33
SAY @50
  IF ~~ THEN EXTERN IMPKIM2 26
END


IF ~~ THEN BEGIN 34
SAY @51
  IF ~~ THEN EXTERN IMPKIM2 27
END

IF ~~ THEN BEGIN 35
SAY @52
  IF ~~ THEN EXTERN IMPKIM2 28
END

IF ~Global("Impfight","GLOBAL",2)~ THEN BEGIN 36
SAY @53
  IF ~~ THEN EXTERN IMPKIM2 29
END

IF ~~ THEN BEGIN 37
SAY @54
  IF ~~ THEN EXTERN IMPKIM2 30
END

APPEND IMPKIM2

IF ~~ THEN BEGIN 0
SAY @55
  IF ~~ THEN EXTERN IMPKIM 1
END

IF ~~ THEN BEGIN 1
SAY @56
  IF ~~ THEN EXTERN IMPKIM 2
END

IF ~~ THEN BEGIN 2
SAY @57
  IF ~~ THEN EXTERN IMPKIM 3
END

IF ~~ THEN BEGIN 3
SAY @58
  IF ~~ THEN EXTERN IMPKIM 4
END

IF ~~ THEN BEGIN 4
SAY @59
  IF ~~ THEN EXTERN IMPKIM 5
END

IF ~~ THEN BEGIN 5
SAY @60
  IF ~~ THEN EXTERN IMPKIM 7 
END

IF ~~ THEN BEGIN 6
SAY @61
  IF ~~ THEN EXTERN IMPKIM 8 
END

IF ~~ THEN BEGIN 7
SAY @62
  IF ~~ THEN DO ~SetGlobal("impfight","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN 8
SAY @63
  IF ~~ THEN EXTERN IMPKIM 10
END

IF ~~ THEN BEGIN 9
SAY @64
  IF ~~ THEN EXTERN IMPKIM 11
END

IF ~~ THEN BEGIN 10
SAY @65
  IF ~~ THEN EXTERN IMPKIM 12
END

IF ~~ THEN BEGIN 11
SAY @66
  IF ~~ THEN EXTERN IMPKIM 14
END

IF ~~ THEN BEGIN 12
SAY @67
  IF ~~ THEN EXTERN IMPKIM 15
END


IF ~~ THEN BEGIN 13
SAY @68
  IF ~~ THEN EXTERN IMPKIM 16
END

IF ~~ THEN BEGIN 14
SAY @69
  IF ~~ THEN EXTERN IMPKIM 18
END

IF ~~ THEN BEGIN 15
SAY @70
  IF ~~ THEN EXTERN IMPKIM 19
END

IF ~~ THEN BEGIN 16
SAY @71
  IF ~~ THEN EXTERN IMPKIM 20
END

IF ~~ THEN BEGIN 17
SAY @72
  IF ~~ THEN EXTERN IMPKIM 22
END

IF ~~ THEN BEGIN 18
SAY @73
  IF ~~ THEN EXTERN IMPKIM 23
END

IF ~~ THEN BEGIN 19
SAY @74
  IF ~~ THEN EXTERN IMPKIM 24
END

IF ~~ THEN BEGIN 20
SAY @75
  IF ~~ THEN EXTERN IMPKIM 27
END

IF ~~ THEN BEGIN 21
SAY @76
  IF ~~ THEN EXTERN IMPKIM 28
END

IF ~~ THEN BEGIN 22
SAY @77
  IF ~~ THEN EXTERN IMPKIM 29
END

IF ~~ THEN BEGIN 23
SAY @78
  IF ~~ THEN EXTERN IMPKIM 30
END

IF ~~ THEN BEGIN 24
SAY @79
  IF ~~ THEN EXTERN IMPKIM 31
END

IF ~~ THEN BEGIN 25
SAY @80
  IF ~~ THEN EXTERN IMPKIM 32
END

IF ~~ THEN BEGIN 26
SAY @81
  IF ~~ THEN EXTERN IMPKIM 23
END

IF ~~ THEN BEGIN 27
SAY @82
  IF ~~ THEN EXTERN IMPKIM 35
END

IF ~~ THEN BEGIN 28
SAY @83
  IF ~~ THEN EXTERN IMPKIM 18
END

IF ~~ THEN BEGIN 29
SAY @84
  IF ~~ THEN EXTERN IMPKIM 37
END


IF ~~ THEN BEGIN 30
SAY @85
  IF ~~ THEN DO ~
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
SetGlobal("impfight","GLOBAL",3) ~ EXIT
END

END
