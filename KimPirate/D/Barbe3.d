BEGIN ~BARBE3~


IF ~true()~ THEN BEGIN 0
SAY @0
IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
SAY @1
IF ~~ THEN REPLY @2 GOTO 2
IF ~~ THEN REPLY @3 GOTO 3
IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2
SAY @5
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3
SAY @6
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
SAY @7
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
SAY @8
IF ~~ THEN DO ~SetGlobal("attaque","LOCALS",1) ~ EXIT
END

