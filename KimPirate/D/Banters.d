APPEND BMINSC

IF WEIGHT #-999 ~Global("MINSCKIM","GLOBAL",1)
Global("kMINSCk1","LOCALS",0)~ THEN BEGIN MINSCkim0
SAY @0
IF ~~ THEN DO ~ SetGlobal("kMINSCk1","LOCALS",1) ~ EXTERN KIMJ KimMINSC0
END

IF ~~ THEN BEGIN MINSCkim1
SAY @1
IF ~~ THEN EXTERN KIMJ KimMINSC1
END

IF ~~ THEN BEGIN MINSCkim2
SAY @2
IF ~~ THEN REPLY @3 EXTERN KIMJ KimMINSC2
IF ~~ THEN REPLY @4 GOTO  MINSCkim3
IF ~~ THEN REPLY @5 EXTERN KIMJ KimMINSC3
END

IF ~~ THEN BEGIN MINSCkim3
SAY @6
IF ~~ THEN EXTERN KIMJ KimMINSC4
END
END

APPEND KIMJ

IF ~~ THEN BEGIN KimMINSC0
SAY @7
IF ~~ THEN EXTERN BMINSC MINSCkim1
END

IF ~~ THEN BEGIN KimMINSC1
SAY @8
IF ~~ THEN EXTERN BMINSC MINSCkim2
END

IF ~~ THEN BEGIN KimMINSC2
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KimMINSC3
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KimMINSC4
SAY @11
IF ~~ THEN EXIT
END
END


CHAIN
IF ~Global("MINSCKIM","GLOBAL",2)
Global("kMINSCk2","LOCALS",0)~ THEN KIMJ KimMINSC5
@12
DO ~ SetGlobal("kMINSCk2","LOCALS",1)~
== BMINSC @13
== KIMJ @14
== BMINSC @15
== KIMJ @16
== BMINSC @17
== KIMJ @18
EXIT

CHAIN
IF ~Global("MINSCKIM","GLOBAL",3)
Global("kMINSCk3","LOCALS",0)~ THEN KIMJ KimMINSC6
@19
DO ~ SetGlobal("kMINSCk3","LOCALS",1)~
== BMINSC @20
== KIMJ @21
== BMINSC @22
== KIMJ @23
EXIT

CHAIN
IF ~Global("MINSCKIM","GLOBAL",4)
Global("kMINSCk4","LOCALS",0)
InParty("Kim")~ THEN KIMJ KimMINSC7
@24
DO ~ SetGlobal("kMINSCk4","LOCALS",1)~
== BMINSC @25
== KIMJ @26
== BMINSC @27
== KIMJ @28
== BMINSC @29
== KIMJ @30
== BMINSC @31
== KIMJ @32
EXIT



// NALIA

APPEND BNALIA

IF WEIGHT #-999 ~Global("NALIAKIM","GLOBAL",1)
Global("kNALIAk1","LOCALS",0)~ THEN BEGIN NALIAkim0
SAY @33
IF ~~ THEN DO ~ SetGlobal("kNALIAk1","LOCALS",1) ~ EXTERN KIMJ KimNALIA0
END

IF ~~ THEN BEGIN NALIAkim1
SAY @34
IF ~~ THEN EXTERN KIMJ KimNALIA1
END

IF ~~ THEN BEGIN NALIAkim2
SAY @35
IF ~~ THEN EXTERN KIMJ KimNALIA2
END

IF ~~ THEN BEGIN NALIAkim3
SAY @36
IF ~~ THEN EXIT
END
END

APPEND KIMJ

IF ~~ THEN BEGIN KimNALIA0
SAY @37
IF ~~ THEN EXTERN BNALIA NALIAkim1
END

IF ~~ THEN BEGIN KimNALIA1
SAY @38
IF ~~ THEN EXTERN BNALIA NALIAkim2
END

IF ~~ THEN BEGIN KimNALIA2
SAY @39
IF ~~ THEN EXTERN BNALIA NALIAkim3
END
END


CHAIN
IF ~Global("NALIAKIM","GLOBAL",2)
Global("kNALIAk2","LOCALS",0)~ THEN KIMJ KimNALIA3
@40
DO ~ SetGlobal("kNALIAk2","LOCALS",1)~
== BNALIA @41
== KIMJ @42
== BNALIA @43
== KIMJ @44
== BNALIA @45
EXIT

CHAIN
IF ~Global("NALIAKIM","GLOBAL",3)
Global("kNALIAk3","LOCALS",0)~ THEN KIMJ KimNALIA4
@46
DO ~ SetGlobal("kNALIAk3","LOCALS",1)~
== BNALIA @47
== KIMJ @48
== BNALIA @49
== KIMJ @50
== BNALIA @51
== KIMJ @52
 == BNALIA @53
== KIMJ @54
EXIT

CHAIN
IF ~Global("NALIAKIM","GLOBAL",4)
Global("kNALIAk4","LOCALS",0)~ THEN KIMJ KimNALIA5
@55
DO ~ SetGlobal("kNALIAk4","LOCALS",1)~
== BNALIA @56
== KIMJ @57
== BNALIA @58
== KIMJ @59
== BNALIA @60
== KIMJ @61
EXIT


// VALYGAR


APPEND BVALYGA

IF WEIGHT #-999 ~Global("VALYGARKIM","GLOBAL",4)
Global("kVALYGARk4","LOCALS",0)~ THEN BEGIN VALYGARkim0
SAY @62
IF ~~ THEN DO ~ SetGlobal("kVALYGARk4","LOCALS",1) ~ EXTERN KIMJ KimVALYGAR0
END

IF ~~ THEN BEGIN VALYGARkim1
SAY @63
IF ~~ THEN EXTERN KIMJ KimVALYGAR1
END
END

APPEND KIMJ

IF ~~ THEN BEGIN KimVALYGAR0
SAY @64
IF ~~ THEN EXTERN BVALYGA VALYGARkim1
END

IF ~~ THEN BEGIN KimVALYGAR1
SAY @65
IF ~~ THEN GOTO KimVALYGAR2
END

IF ~~ THEN BEGIN KimVALYGAR2
SAY @66
IF ~~ THEN EXIT
END
END

CHAIN
IF ~Global("VALYGARKIM","GLOBAL",1)
Global("kVALYGARk1","LOCALS",0)~ THEN KIMJ KimVALYGAR3
@67
DO ~ SetGlobal("kVALYGARk1","LOCALS",1)~
== BVALYGA @68
== KIMJ @69
== BVALYGA @70
== KIMJ @71
== BVALYGA @72
== KIMJ @73
EXIT


CHAIN
IF ~Global("VALYGARKIM","GLOBAL",2)
Global("kVALYGARk2","LOCALS",0)~ THEN KIMJ KimVALYGAR4
@74
DO ~ SetGlobal("kVALYGARk2","LOCALS",1)~
== BVALYGA @75
== KIMJ @76
== BVALYGA @77
== KIMJ @65
= @78
== BVALYGA @79
= @80
= @81
EXIT

CHAIN
IF ~Global("VALYGARKIM","GLOBAL",3)
Global("kVALYGARk3","LOCALS",0)~ THEN KIMJ KimVALYGAR5
@82
DO ~ SetGlobal("kVALYGARk3","LOCALS",1)~
== BVALYGA @83
== KIMJ @84
== BVALYGA @85
== KIMJ @86
== BVALYGA @87
EXIT

// VICONIA


CHAIN
IF WEIGHT #-999 ~Global("VICONIAKIM","GLOBAL",1)
Global("kVICONIAk1","LOCALS",0)~ THEN BVICONI KimVICONIA0
@88
DO ~ SetGlobal("kVICONIAk1","LOCALS",1)~
==KIMJ @89

== BVICONI @90
== KIMJ @91
== BVICONI @92
EXIT


CHAIN
IF ~Global("VICONIAKIM","GLOBAL",2)
Global("kVICONIAk2","LOCALS",0)~ THEN KIMJ KimVICONIA1
@93
DO ~ SetGlobal("kVICONIAk2","LOCALS",1)~
== BVICONI @94
== KIMJ @95
== BVICONI @96
== KIMJ @97
== BVICONI @98
== KIMJ @99
EXIT


CHAIN
IF ~Global("VICONIAKIM","GLOBAL",3)
Global("kVICONIAk3","LOCALS",0)~ THEN KIMJ KimVICONIA4
@100
DO ~ SetGlobal("kVICONIAk3","LOCALS",1)~
== BVICONI @101
== KIMJ @102
== BVICONI @103
== KIMJ @104
== BVICONI @105
EXIT

CHAIN
IF ~Global("VICONIAKIM","GLOBAL",4)
Global("kVICONIAk4","LOCALS",0)~ THEN KIMJ KimVICONIA5
@106
DO ~ SetGlobal("kVICONIAk4","LOCALS",1)~
== BVICONI @107
== KIMJ @108
== BVICONI @109
== KIMJ @110
== BVICONI @111
== KIMJ @112
== BVICONI @113
EXIT

// YOSHIMO

CHAIN
IF WEIGHT #-999 ~Global("YOSHIMOKIM","GLOBAL",1)
Global("kYOSHIMOk1","LOCALS",0)~ THEN BYOSHIM KimYOSHIMO0
@114
DO ~ SetGlobal("kYOSHIMOk1","LOCALS",1)~
==KIMJ @115
== BYOSHIM @116
== KIMJ @117
== BYOSHIM @118
EXIT


CHAIN
IF ~Global("YOSHIMOKIM","GLOBAL",2)
Global("kYOSHIMOk2","LOCALS",0)~ THEN KIMJ KimYOSHIMO1
@119
DO ~ SetGlobal("kYOSHIMOk2","LOCALS",1)~
== BYOSHIM @120
== KIMJ @121
== BYOSHIM @122
== KIMJ @123
== BYOSHIM @124
EXIT


CHAIN
IF WEIGHT #-999 ~Global("YOSHIMOKIM","GLOBAL",3)
Global("kYOSHIMOk3","LOCALS",0)~ THEN BYOSHIM KimYOSHIMO4
@125
DO ~ SetGlobal("kYOSHIMOk3","LOCALS",1)~
== KIMJ @126
== BYOSHIM @127
== KIMJ @128
== BYOSHIM @129
EXIT




APPEND KIMJ



IF ~~ THEN BEGIN Kimmazzy0
SAY @130
IF ~~ THEN EXTERN BMAZZY Mazzykim1
END

IF ~~ THEN BEGIN Kimmazzy1
SAY @131
IF ~~ THEN EXTERN BMAZZY Mazzykim2
END

IF ~~ THEN BEGIN Kimmazzy2
SAY @132
IF ~~ THEN EXTERN BMAZZY Mazzykim3
END

IF ~~ THEN BEGIN Kimmazzy3
SAY @133
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kimmazzy4
SAY @134
IF ~~ THEN EXTERN BMAZZY Mazzykim5
END

IF ~~ THEN BEGIN Kimmazzy5
SAY @135
IF ~~ THEN EXTERN BMAZZY Mazzykim6
END

IF ~~ THEN BEGIN Kimmazzy6
SAY @136
IF ~~ THEN EXTERN BMAZZY Mazzykim7
END

IF ~~ THEN BEGIN Kimmazzy7
SAY @137
IF ~~ THEN EXTERN BMAZZY Mazzykim8
END

IF ~~ THEN BEGIN Kimmazzy8
SAY @138
IF ~~ THEN EXIT
END




IF ~~ THEN BEGIN Kimkorgan0
SAY @139
IF ~~ THEN EXTERN BKORGAN Korgankim1
END

IF ~~ THEN BEGIN Kimkorgan1
SAY @140
IF ~~ THEN EXTERN BKORGAN Korgankim2
END

IF ~~ THEN BEGIN Kimkorgan2
SAY @141
IF ~~ THEN EXTERN BKORGAN Korgankim3
END

IF ~~ THEN BEGIN Kimkorgan3
SAY @142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kimkorgan4
SAY @143
IF ~~ THEN EXTERN BKORGAN Korgankim5
END

IF ~~ THEN BEGIN Kimkorgan5
SAY @144
IF ~~ THEN EXTERN BKORGAN Korgankim6
END

IF ~~ THEN BEGIN Kimkorgan6
SAY @145
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN Kimkeldorn0
SAY @146
IF ~~ THEN EXTERN BKELDOR Keldornkim1
END

IF ~~ THEN BEGIN Kimkeldorn1
SAY @147
IF ~~ THEN EXTERN BKELDOR Keldornkim2
END

IF ~~ THEN BEGIN Kimkeldorn2
SAY @148
IF ~~ THEN EXTERN BKELDOR Keldornkim3
END

IF ~~ THEN BEGIN Kimkeldorn3
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kimkeldorn4
SAY @150
IF ~~ THEN EXTERN BKELDOR Keldornkim5
END

IF ~~ THEN BEGIN Kimkeldorn5
SAY @151
IF ~~ THEN EXTERN BKELDOR Keldornkim6
END

IF ~~ THEN BEGIN Kimkeldorn6
SAY @152
IF ~~ THEN EXTERN BKELDOR Keldornkim7
END

IF ~~ THEN BEGIN Kimkeldorn7
SAY @153
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kimjan1
SAY @154
IF ~~ THEN EXTERN BJAN JanKim2
END

IF ~~ THEN BEGIN Kimjan2
SAY @155
IF ~~ THEN EXTERN BJAN JanKim3
END

IF ~~ THEN BEGIN Kimjan3
SAY @156
IF ~~ THEN EXTERN BJAN JanKim4
END

IF ~~ THEN BEGIN Kimjan4
SAY @157
IF ~~ THEN EXTERN BJAN JanKim5
END

IF ~~ THEN BEGIN Kimjan5
SAY @158
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kimjan6
SAY @159
IF ~~ THEN EXTERN BJAN JanKim7
END

IF ~~ THEN BEGIN Kimjan7
SAY @160
IF ~~ THEN EXTERN BJAN JanKim8
END

IF ~~ THEN BEGIN Kimjan8
SAY @161
IF ~~ THEN EXTERN BJAN JanKim9
END

IF ~~ THEN BEGIN Kimjan9
SAY @162
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN Kimjaheira1
SAY @163
IF ~~ THEN EXTERN BJAHEIR JaheiraKim2
END

IF ~~ THEN BEGIN Kimjaheira2
SAY @164
IF ~~ THEN EXTERN BJAHEIR JaheiraKim3
END


IF ~~ THEN BEGIN KimImoen1
SAY @165
IF ~~ THEN EXTERN BIMOEN2 ImoenKim2
END

IF ~~ THEN BEGIN KimImoen2
SAY @166
IF ~~ THEN EXTERN BIMOEN2 ImoenKim3
END

IF ~~ THEN BEGIN KimImoen3
SAY @167
IF ~~ THEN EXTERN BIMOEN2 ImoenKim4
END

IF ~~ THEN BEGIN KimImoen4
SAY @168
IF ~~ THEN EXTERN BIMOEN2 ImoenKim5
END

IF ~~ THEN BEGIN KimImoen5
SAY @169
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN KimHaerda1 
SAY @170
IF ~~ THEN EXTERN BHAERDA HaerdaKim2
END

IF ~~ THEN BEGIN KimHaerda2 
SAY @171
IF ~~ THEN EXTERN BHAERDA HaerdaKim3
END

IF ~~ THEN BEGIN KimHaerda3 
SAY @172
IF ~~ THEN EXTERN BHAERDA HaerdaKim5
END

IF ~~ THEN BEGIN KimHaerda4 
SAY @173
IF ~~ THEN EXTERN BHAERDA HaerdaKim6
END

IF ~~ THEN BEGIN KimHaerda5 
SAY @174
IF ~~ THEN EXTERN BHAERDA HaerdaKim7
END

IF ~~ THEN BEGIN KimHaerda6 
SAY @175
IF ~~ THEN EXTERN BHAERDA HaerdaKim8
END

IF ~~ THEN BEGIN KimHaerda7 
SAY @176
IF ~~ THEN EXTERN BHAERDA HaerdaKim9
END

IF ~~ THEN BEGIN KimHaerda8 
SAY @177
IF ~~ THEN EXTERN BHAERDA HaerdaKim10
END



IF ~~ THEN BEGIN KimEdwin4
SAY @178
IF ~~ THEN EXTERN BEDWIN EdwinKim2
END

IF ~~ THEN BEGIN KimEdwin5
SAY @179
IF ~~ THEN EXTERN BEDWIN EdwinKim3
END

IF ~~ THEN BEGIN KimEdwin6
SAY @180
IF ~~ THEN EXTERN BEDWIN EdwinKim4
END


IF ~~ THEN BEGIN KimCernd1
SAY @181
IF ~~ THEN EXTERN BCERND CerndKim2
END


IF ~~ THEN BEGIN KimAnomen1
SAY @182
IF ~~ THEN EXTERN BANOMEN AnomenKim2
END

IF ~~ THEN BEGIN KimAnomen2
SAY @183
IF ~~ THEN EXTERN BANOMEN AnomenKim3
END

IF ~~ THEN BEGIN KimAnomen3
SAY @184
IF ~~ THEN EXTERN BANOMEN AnomenKim4
END

IF ~~ THEN BEGIN KimAnomen4
SAY @185
IF ~~ THEN EXTERN BANOMEN AnomenKim5
END

IF ~~ THEN BEGIN KimAnomen7
SAY @186
IF ~~ THEN EXTERN BANOMEN AnomenKim7
END

IF ~~ THEN BEGIN KimAnomen8
SAY @187
IF ~~ THEN EXTERN BANOMEN AnomenKim8
END

IF ~~ THEN BEGIN KimAnomen9
SAY @188
IF ~~ THEN EXTERN BANOMEN AnomenKim9
END

IF ~~ THEN BEGIN KimAnomen10
SAY @189
IF ~~ THEN EXTERN BANOMEN AnomenKim10
END

IF ~~ THEN BEGIN KimAnomen11
SAY @190
IF ~~ THEN EXTERN BANOMEN AnomenKim11
END

IF ~~ THEN BEGIN KimAnomen12
SAY @191
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN Aerieb1
SAY @192
IF ~~ THEN EXTERN BAERIE Kimb2
END

IF ~~ THEN BEGIN Aerieb2
SAY @193
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Aerieb4
SAY @194
IF ~~ THEN EXTERN BAERIE Kimb4
END

IF ~~ THEN BEGIN Aerieb5
SAY @195
IF ~~ THEN EXTERN BAERIE Kimb5
END

IF ~~ THEN BEGIN Aerieb6
SAY @196
IF ~~ THEN EXTERN BAERIE Kimb6
END

IF ~~ THEN BEGIN Aerieb7
SAY @197
IF ~!IfValidForPartyDialog("ANOMEN")
!IfValidForPartyDialog("HAERDALIS")~ THEN GOTO Aerieb10
IF ~!IfValidForPartyDialog("ANOMEN")
IfValidForPartyDialog("HAERDALIS")~ THEN GOTO Aerieb8
IF ~IfValidForPartyDialog("ANOMEN")~ THEN GOTO Aerieb9
END

IF ~~ THEN BEGIN Aerieb8
SAY @198
IF ~~ THEN EXTERN BHAERDA Kimaerie1
END

IF ~~ THEN BEGIN Aerieb9
SAY @199
IF ~~ THEN EXTERN BANOMEN Kimaerie1
END

IF ~~ THEN BEGIN Aerieb10
SAY @200
IF ~~ THEN EXTERN BAERIE Kimb7
END
END




APPEND BAERIE

IF WEIGHT #-999 ~Global("AERIEKIM","GLOBAL",1)
Global("kaeriek1","LOCALS",0)~ THEN BEGIN Kimb1
SAY @201
IF ~~ THEN DO ~ SetGlobal("kaeriek1","LOCALS",1) ~ EXTERN KIMJ Aerieb1
END

IF ~~ THEN BEGIN Kimb2
SAY @202
IF ~~ THEN EXTERN KIMJ Aerieb2
END

IF WEIGHT #-999 ~Global("AERIEKIM","GLOBAL",3)
Global("kaeriek3","LOCALS",0)~ THEN BEGIN Kimb3
SAY @203
IF ~~ THEN DO ~ SetGlobal("kaeriek3","LOCALS",1) ~ EXTERN KIMJ Aerieb4
END

IF ~~ THEN BEGIN Kimb4
SAY @204
IF ~~ THEN EXTERN KIMJ Aerieb5
END

IF ~~ THEN BEGIN Kimb5
SAY @205
IF ~~ THEN EXTERN KIMJ Aerieb6
END

IF ~~ THEN BEGIN Kimb6
SAY @206
IF ~~ THEN EXTERN KIMJ Aerieb8
END

IF ~~ THEN BEGIN Kimb7
SAY @207
IF ~~ THEN EXIT
END
END

APPEND BHAERDA

IF ~~ THEN BEGIN Kimaerie1
SAY @208
IF ~~ THEN EXTERN KIMJ Aerieb10
END
END

APPEND BANOMEN

IF ~~ THEN BEGIN Kimaerie1
SAY @209
IF ~~ THEN EXTERN KIMJ Aerieb10
END
END



APPEND BANOMEN

IF WEIGHT #-999 ~Global("AnomenKim","GLOBAL",1)
Global("kanomenk1","LOCALS",0)~ THEN BEGIN AnomenKim1
SAY @210
IF ~~ THEN DO ~ SetGlobal("kanomenk1","LOCALS",1) ~ EXTERN KIMJ KimAnomen1
END

IF ~~ THEN BEGIN AnomenKim2
SAY @211
IF ~~ THEN EXTERN KIMJ KimAnomen2
END

IF ~~ THEN BEGIN AnomenKim3
SAY @212
IF ~~ THEN EXTERN ~KIMJ~ KimAnomen3
END

IF ~~ THEN BEGIN AnomenKim4
SAY @213
IF ~~ THEN EXTERN ~KIMJ~ KimAnomen4
END

IF ~~ THEN BEGIN AnomenKim5
SAY @214
IF ~~ THEN EXIT
END

IF WEIGHT #-999 ~Global("AnomenKim","GLOBAL",3)
Global("kanomenk3","LOCALS",0)~ THEN BEGIN AnomenKim6
SAY @215
IF ~~ THEN DO ~ SetGlobal("kanomenk3","LOCALS",1) ~ EXTERN KIMJ KimAnomen7
END

IF ~~ THEN BEGIN AnomenKim7
SAY @216
IF ~~ THEN EXTERN KIMJ KimAnomen8
END

IF ~~ THEN BEGIN AnomenKim8
SAY @217
IF ~~ THEN EXTERN KIMJ KimAnomen9
END

IF ~~ THEN BEGIN AnomenKim9
SAY @218
IF ~~ THEN EXTERN KIMJ KimAnomen10
END

IF ~~ THEN BEGIN AnomenKim10
SAY @219
IF ~~ THEN EXTERN KIMJ KimAnomen11
END

IF ~~ THEN BEGIN AnomenKim11
SAY @220
IF ~~ THEN EXTERN KIMJ KimAnomen12
END
END

APPEND BCERND

IF WEIGHT #-999 ~Global("CerndKim","GLOBAL",1)
Global("kcerndk1","LOCALS",0)~ THEN BEGIN CerndKim1
SAY @221
IF ~~ THEN DO ~ SetGlobal("kcerndk1","LOCALS",1) ~ EXTERN KIMJ KimCernd1
END

IF ~~ THEN BEGIN CerndKim2
SAY @222
IF ~~ THEN EXIT
END
END

APPEND BEDWIN

IF WEIGHT #-999 ~Global("EdwinKim","GLOBAL",4)
Global("kedwink4","LOCALS",0)~ THEN BEGIN EdwinKim1
SAY @223
IF ~~ THEN DO ~ SetGlobal("kedwink4","LOCALS",1) ~ EXTERN KIMJ KimEdwin4
END

IF ~~ THEN BEGIN EdwinKim2
SAY @224
IF ~~ THEN EXTERN KIMJ KimEdwin5
END

IF ~~ THEN BEGIN EdwinKim3
SAY @225
IF ~~ THEN EXTERN KIMJ KimEdwin6
END

IF ~~ THEN BEGIN EdwinKim4
SAY @226
IF ~~ THEN EXIT
END
END


APPEND BHAERDA

IF WEIGHT #-999 ~Global("HaerdaKim","GLOBAL",2)
Global("khaerdak2","LOCALS",0)~ THEN BEGIN HaerdaKim1
SAY @227
IF ~~ THEN DO ~ SetGlobal("khaerdak2","LOCALS",1) ~ EXTERN KIMJ KimHaerda1
END

IF ~~ THEN BEGIN HaerdaKim2
SAY @228
IF ~~ THEN EXTERN KIMJ KimHaerda2
END

IF ~~ THEN BEGIN HaerdaKim3
SAY @229
IF ~~ THEN EXIT
END

IF WEIGHT #-999 ~Global("HaerdaKim","GLOBAL",4)
Global("khaerdak4","LOCALS",0)~ THEN BEGIN HaerdaKim4
SAY @230
IF ~~ THEN DO ~ SetGlobal("khaerdak4","LOCALS",1) ~ EXTERN KIMJ KimHaerda3
END

IF ~~ THEN BEGIN HaerdaKim5
SAY @231
IF ~~ THEN EXTERN KIMJ KimHaerda4
END

IF ~~ THEN BEGIN HaerdaKim6
SAY @232
IF ~~ THEN EXTERN KIMJ KimHaerda5
END

IF ~~ THEN BEGIN HaerdaKim7
SAY @233
IF ~~ THEN EXTERN KIMJ KimHaerda6
END

IF ~~ THEN BEGIN HaerdaKim8
SAY @234
IF ~~ THEN EXTERN KIMJ KimHaerda7
END

IF ~~ THEN BEGIN HaerdaKim9
SAY @234
IF ~~ THEN EXTERN KIMJ KimHaerda8
END

IF ~~ THEN BEGIN HaerdaKim10
SAY @235
IF ~~ THEN EXTERN KIMJ KimHaerda9
END
END


APPEND BIMOEN2

IF WEIGHT #-999 ~Global("ImoenKim","GLOBAL",3)
Global("kimoenk3","LOCALS",0)~ THEN BEGIN ImoenKim1
SAY @236
IF ~~ THEN DO ~ SetGlobal("kimoenk3","LOCALS",1) ~ EXTERN KIMJ KimImoen1
END

IF ~~ THEN BEGIN ImoenKim2
SAY @237
IF ~~ THEN EXTERN KIMJ KimImoen2
END

IF ~~ THEN BEGIN ImoenKim3
SAY @238
IF ~~ THEN EXTERN KIMJ KimImoen3
END

IF ~~ THEN BEGIN ImoenKim4
SAY @239
IF ~~ THEN EXTERN KIMJ KimImoen4
END

IF ~~ THEN BEGIN ImoenKim5
SAY @240
IF ~~ THEN EXTERN KIMJ KimImoen5
END
END

APPEND BJAHEIR

IF WEIGHT #-999 ~Global("JaheiraKim","GLOBAL",4)
Global("kjaheirk4","LOCALS",0)~ THEN BEGIN JaheiraKim1
SAY @241
IF ~~ THEN DO ~ SetGlobal("kjaheirk4","LOCALS",1) ~ EXTERN KIMJ Kimjaheira1
END

IF ~~ THEN BEGIN JaheiraKim2
SAY @242
IF ~~ THEN EXTERN KIMJ Kimjaheira2
END

IF ~~ THEN BEGIN JaheiraKim3
SAY @243
IF ~~ THEN EXIT
END
END

APPEND BJAN

IF WEIGHT #-999 ~Global("JanKim","GLOBAL",2)
Global("kjank2","LOCALS",0) ~ THEN BEGIN JanKim1
SAY @244
IF ~~ THEN DO ~ SetGlobal("kjank2","LOCALS",1) ~ EXTERN KIMJ Kimjan1
END

IF ~~ THEN BEGIN JanKim2
SAY @245
IF ~~ THEN EXTERN KIMJ Kimjan2
END

IF ~~ THEN BEGIN JanKim3
SAY @246
IF ~~ THEN EXTERN KIMJ Kimjan3
END

IF ~~ THEN BEGIN JanKim4
SAY @247
IF ~~ THEN EXTERN KIMJ Kimjan4
END

IF ~~ THEN BEGIN JanKim5
SAY @248
IF ~~ THEN EXTERN KIMJ Kimjan5
END

IF WEIGHT #-999 ~Global("JanKim","GLOBAL",4)
Global("kjank4","LOCALS",0)~ THEN BEGIN JanKim6
SAY @249
IF ~~ THEN DO ~ SetGlobal("kjank4","LOCALS",1) ~ EXTERN KIMJ Kimjan6
END

IF ~~ THEN BEGIN JanKim7
SAY @250
IF ~~ THEN EXTERN KIMJ Kimjan7
END

IF ~~ THEN BEGIN JanKim8
SAY @251
IF ~~ THEN EXTERN KIMJ Kimjan8
END

IF ~~ THEN BEGIN JanKim9
SAY @252
IF ~~ THEN EXTERN KIMJ Kimjan9
END
END


APPEND BKELDOR

IF WEIGHT #-999 ~Global("KELDORNKIM","GLOBAL",2)
Global("kkeldornk2","LOCALS",0)~ THEN BEGIN Keldornkim0
SAY @253
IF ~~ THEN DO ~ SetGlobal("kkeldornk2","LOCALS",1) ~ EXTERN KIMJ Kimkeldorn0
END

IF ~~ THEN BEGIN Keldornkim1
SAY @254
IF ~~ THEN EXTERN KIMJ Kimkeldorn1
END

IF ~~ THEN BEGIN Keldornkim2
SAY @255
IF ~~ THEN EXTERN KIMJ Kimkeldorn2
END

IF ~~ THEN BEGIN Keldornkim3
SAY @256
IF ~~ THEN EXTERN KIMJ Kimkeldorn3
END

IF WEIGHT #-999 ~Global("KELDORNKIM","GLOBAL",4)
Global("kkeldornk4","LOCALS",0)~ THEN BEGIN Keldornkim4
SAY @257
IF ~~ THEN DO ~ SetGlobal("kkeldornk4","LOCALS",1) ~ EXTERN KIMJ Kimkeldorn4
END

IF ~~ THEN BEGIN Keldornkim5
SAY @258
IF ~~ THEN EXTERN KIMJ Kimkeldorn5
END

IF ~~ THEN BEGIN Keldornkim6
SAY @259
IF ~~ THEN EXTERN KIMJ Kimkeldorn6
END

IF ~~ THEN BEGIN Keldornkim7
SAY @260
IF ~~ THEN EXTERN KIMJ Kimkeldorn7
END
END

APPEND BKORGAN

IF WEIGHT #-999 ~Global("KORGANKIM","GLOBAL",2)
Global("kkorgank2","LOCALS",0)~ THEN BEGIN Korgankim0
SAY @261
IF ~~ THEN DO ~ SetGlobal("kkorgank2","LOCALS",1) ~ EXTERN KIMJ Kimkorgan0
END

IF ~~ THEN BEGIN Korgankim1
SAY @262
IF ~~ THEN EXTERN KIMJ Kimkorgan1
END

IF ~~ THEN BEGIN Korgankim2
SAY @263
IF ~~ THEN EXTERN KIMJ Kimkorgan2
END

IF ~~ THEN BEGIN Korgankim3
SAY @264
IF ~~ THEN EXTERN KIMJ Kimkorgan3
END

IF WEIGHT #-999 ~Global("KORGANKIM","GLOBAL",4)
Global("kkorgank4","LOCALS",0)~ THEN BEGIN Korgankim4
SAY @265
IF ~~ THEN DO ~ SetGlobal("kkorgank4","LOCALS",1) ~ EXTERN KIMJ Kimkorgan4
END

IF ~~ THEN BEGIN Korgankim5
SAY @266
IF ~~ THEN EXTERN KIMJ Kimkorgan5
END

IF ~~ THEN BEGIN Korgankim6
SAY @267
IF ~~ THEN EXTERN KIMJ Kimkorgan6
END
END


APPEND BMAZZY

IF WEIGHT #-999 ~Global("MAZZYKIM","GLOBAL",2)
Global("kmazzyk2","LOCALS",0)~ THEN BEGIN Mazzykim0
SAY @268
IF ~~ THEN DO ~ SetGlobal("kmazzyk2","LOCALS",1) ~ EXTERN KIMJ Kimmazzy0
END

IF ~~ THEN BEGIN Mazzykim1
SAY @269
IF ~~ THEN EXTERN KIMJ Kimmazzy1
END

IF ~~ THEN BEGIN Mazzykim2
SAY @270
IF ~~ THEN EXTERN KIMJ Kimmazzy2
END

IF ~~ THEN BEGIN Mazzykim3
SAY @271
IF ~~ THEN EXTERN KIMJ Kimmazzy3
END

IF WEIGHT #-999 ~Global("MAZZYKIM","GLOBAL",4)
Global("kmazzyk4","LOCALS",0)~ THEN BEGIN Mazzykim4
SAY @272
IF ~~ THEN DO ~ SetGlobal("kmazzyk4","LOCALS",1) ~ EXTERN KIMJ Kimmazzy4
END

IF ~~ THEN BEGIN Mazzykim5
SAY @273
IF ~~ THEN EXTERN KIMJ Kimmazzy5
END

IF ~~ THEN BEGIN Mazzykim6
SAY @274
IF ~~ THEN EXTERN KIMJ Kimmazzy6
END

IF ~~ THEN BEGIN Mazzykim7
SAY @275
IF ~~ THEN EXTERN KIMJ Kimmazzy7
END

IF ~~ THEN BEGIN Mazzykim8
SAY @276
IF ~~ THEN EXTERN KIMJ Kimmazzy8
END
END



CHAIN
IF ~Global("MAZZYKIM","GLOBAL",1)
Global("kmazzyk1","LOCALS",0)~ THEN KIMJ Kimmazzy9
@277
DO ~ SetGlobal("kmazzyk1","LOCALS",1)~
== BMAZZY @278
== KIMJ @279
== BMAZZY @280
== BKELDOR IF ~InParty("Keldorn")~ THEN
@281
== KIMJ IF ~InParty("Keldorn")~ THEN
@282
== KIMJ IF ~!InParty("Keldorn")~ THEN
@283
EXIT

CHAIN
IF ~Global("MAZZYKIM","GLOBAL",3)
Global("kmazzyk3","LOCALS",0)~ THEN KIMJ Kimmazzy10
@284
DO ~ SetGlobal("kmazzyk3","LOCALS",1)~
== BMAZZY @285
== KIMJ @286
== BMAZZY @287
== KIMJ @288
== BMAZZY @289
== KIMJ @290
EXIT







CHAIN
IF ~Global("KORGANKIM","GLOBAL",1)
Global("kkorgank1","LOCALS",0)~ THEN KIMJ Kimkorgan8
@291
DO ~ SetGlobal("kkorgank1","LOCALS",1)~
== BKORGAN @292
== KIMJ @293
== BKORGAN @294
== KIMJ @295
== BKORGAN @296
EXIT

CHAIN
IF ~Global("KORGANKIM","GLOBAL",3)
Global("kkorgank3","LOCALS",0)~ THEN KIMJ Kimkorgan9
@297
DO ~ SetGlobal("kkorgank3","LOCALS",1)~
== BKORGAN @298
== KIMJ @299
== BKORGAN @300
== KIMJ @301
== BKORGAN @302
== KIMJ @303
EXIT


CHAIN
IF ~Global("KELDORNKIM","GLOBAL",1)
Global("kkeldornk1","LOCALS",0)~ THEN KIMJ Kimkeldorn8
@304
DO ~ SetGlobal("kkeldornk1","LOCALS",1)~
== BKELDOR @305
== KIMJ @306
== BKELDOR @307
== KIMJ @308
== BKELDOR @309
== KIMJ @310
== BKELDOR @311
EXIT

CHAIN
IF ~Global("KELDORNKIM","GLOBAL",3)
Global("kkeldornk3","LOCALS",0)~ THEN KIMJ Kimkeldorn9
@312
DO ~ SetGlobal("kkeldornk3","LOCALS",1)~
== BKELDOR @313
== KIMJ @314
== BKELDOR @315
== KIMJ @316
== BKELDOR @317
== KIMJ @318
EXIT

CHAIN
IF ~Global("JANKIM","GLOBAL",1)
Global("kjank1","LOCALS",0)~ THEN KIMJ Kimjan10
@319
DO ~SetGlobal("kjank1","LOCALS",1)~
== BJAN @320
== KIMJ @321
== BJAN @322
== KIMJ @323
== BJAN @324
== KIMJ @325
== BJAN @326
== KIMJ @327
== BJAN @328
EXIT

CHAIN
IF ~Global("JANKIM","GLOBAL",3)
Global("kjank3","LOCALS",0)~ THEN KIMJ Kimjan11
@329
DO ~SetGlobal("kjank3","LOCALS",1)~
== BJAN @330
== KIMJ @331
== BJAN @332
= @333
== KIMJ @334
== BJAN @335
== KIMJ @336
== BJAN @337
== KIMJ @338
EXIT



CHAIN
IF ~Global("JAHEIRAKIM","GLOBAL",1)
Global("kjaheirk1","LOCALS",1)~ THEN KIMJ Kimjaheira3
@339
DO ~SetGlobal("kjaheirk1","LOCALS",1)~
== BJAHEIR @340
== KIMJ @341
== BJAHEIR @342
== KIMJ @343
== BJAHEIR @344
== KIMJ @345
EXIT

CHAIN
IF ~Global("JAHEIRAKIM","GLOBAL",2)
Global("kjaheirk2","LOCALS",0)~ THEN KIMJ Kimjaheira3
@346
DO ~SetGlobal("kjaheirk2","LOCALS",1)~
== BJAHEIR @347
== KIMJ @348
== BJAHEIR @349
== KIMJ @350
== BEDWIN IF ~IsValidForPartyDialog("Edwin")~ THEN
@351
== BJAHEIR @352
EXIT

CHAIN
IF ~Global("JAHEIRAKIM","GLOBAL",3)
Global("kjaheirk3","LOCALS",0)~ THEN KIMJ Kimjaheira3
@353
DO ~SetGlobal("kjaheirk3","LOCALS",1)~
== BJAHEIR @354
== KIMJ @355
== BJAHEIR @356
EXIT


CHAIN
IF ~Global("IMOENKIM","GLOBAL",1)
Global("kimoenk1","LOCALS",0)~ THEN KIMJ KimImoen6
@357
DO ~SetGlobal("kimoenk1","LOCALS",1)~
== BIMOEN2 @358
== KIMJ @359
== BIMOEN2 @360
== KIMJ @56
== BIMOEN2 @361
== KIMJ @362
== BIMOEN2 @363
== KIMJ @364
EXIT

CHAIN
IF ~Global("IMOENKIM","GLOBAL",2)
Global("kimoenk2","LOCALS",0)~ THEN KIMJ KimImoen7
@365
DO ~SetGlobal("kimoenk2","LOCALS",1)~
== BIMOEN2 @366
== KIMJ @367
== BIMOEN2 @368
== KIMJ @369
== BIMOEN2 @370
== KIMJ @371
EXIT

CHAIN
IF ~Global("IMOENKIM","GLOBAL",4)
Global("kimoenk4","LOCALS",0)~ THEN KIMJ KimImoen8
@372
DO ~SetGlobal("kimoenk4","LOCALS",1)~
== BIMOEN2 @373
== KIMJ @374
== BIMOEN2 @375
== KIMJ @376
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN
@377
== BIMOEN2 IF ~!IsValidForPartyDialog("Jaheira")~ THEN
@378
EXIT

CHAIN
IF ~Global("HAERDAKIM","GLOBAL",1)
Global("kimhaerdak1","LOCALS",0)~ THEN KIMJ KimHaerda9
@379
DO ~SetGlobal("kimhaerdak1","LOCALS",1)~
== BHAERDA @380
== KIMJ @381
== BHAERDA @382
== KIMJ @383
== BHAERDA @384
EXIT

CHAIN
IF ~Global("HAERDAKIM","GLOBAL",3)
Global("kimhaerdak3","LOCALS",0)~ THEN KIMJ KimHaerda10
@385
DO ~SetGlobal("kimhaerdak3","LOCALS",1)~
== BHAERDA @386
== KIMJ @387
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN
@388
== BVICONI IF ~IsValidForPartyDialog("Viconia")~ THEN
@389
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN
@390
== BIMOEN2 IF ~IsValidForPartyDialog("Imoen2")~ THEN
@391
== BNALIA IF ~IsValidForPartyDialog("Nalia")~ THEN
@392
== BHAERDA @393
== KIMJ @394
== BHAERDA @395
== KIMJ @396
EXIT



CHAIN
IF ~Global("EDWINKIM","GLOBAL",1)
Global("kimedwink1","LOCALS",0)~ THEN KIMJ KimEdwin1
@397
DO ~SetGlobal("kimedwink1","LOCALS",1)~
== BEDWIN @398
== KIMJ @399
== BEDWIN @400
== KIMJ @401
== BEDWIN @402
== KIMJ @403
== BEDWIN @404
EXIT

CHAIN
IF ~Global("EDWINKIM","GLOBAL",2)
Global("kimedwink2","LOCALS",0)~ THEN KIMJ KimEdwin2
@405
DO ~SetGlobal("kimedwink2","LOCALS",1)~
== BEDWIN @406
== KIMJ @407
== BEDWIN @408
== KIMJ @409
== BEDWIN @410
== KIMJ @411
EXIT

CHAIN
IF ~Global("EDWINKIM","GLOBAL",3)
Global("kimedwink3","LOCALS",0)~ THEN KIMJ KimEdwin3
@412
DO ~SetGlobal("kimedwink3","LOCALS",1)~
== BEDWIN @413
== KIMJ @414
== BEDWIN @415
== KIMJ @416
== BEDWIN @417
== KIMJ @418
== BEDWIN @419
EXIT

CHAIN
IF ~Global("CERNDKIM","GLOBAL",2)
Global("kimcerndk2","LOCALS",0)~ THEN KIMJ KimCernd2
@420
DO ~SetGlobal("kimcerndk2","LOCALS",1)~
== BCERND @421
== KIMJ @422
== BCERND @423
== KIMJ @424
== BCERND @425
= @426
= @427
EXIT

CHAIN
IF ~Global("CERNDKIM","GLOBAL",3)
Global("kimcerndk3","LOCALS",0)~ THEN KIMJ KimCernd3
@428
DO ~SetGlobal("kimcerndk3","LOCALS",1)~
== BCERND @429
== KIMJ @430
== BCERND @431
== KIMJ @432
== BCERND @433
== KIMJ @434
== BCERND @435
EXIT

CHAIN
IF ~Global("CERNDKIM","GLOBAL",4)
Global("kimcerndk4","LOCALS",0)~ THEN KIMJ KimCernd3
@436
DO ~SetGlobal("kimcerndk4","LOCALS",1)~
== BCERND @437
== KIMJ @438
== BCERND @439
== KIMJ @440
== BCERND @441
== KIMJ @442
EXIT

CHAIN
IF ~Global("AERIEKIM","GLOBAL",2)
Global("kimaeriek2","LOCALS",0)~ THEN KIMJ Aerieb3
@443
DO ~SetGlobal("kimaeriek2","LOCALS",1)~
== BAERIE @444
== KIMJ @445
== BAERIE @446
== KIMJ @447
== BAERIE @448
== KIMJ @449
EXIT


CHAIN
IF ~Global("AERIEKIM","GLOBAL",4)
Global("kimaeriek4","LOCALS",0)~ THEN KIMJ Aerieb11
@450
DO ~SetGlobal("kimaeriek4","LOCALS",1)~
== BAERIE @451
== KIMJ @452
== BAERIE @453
== KIMJ @454
EXIT

CHAIN
IF ~Global("ANOMENKIM","GLOBAL",2)
Global("kimanomenk2","LOCALS",0)~ THEN KIMJ KimAnomen5
@455
DO ~SetGlobal("kimanomenk2","LOCALS",1)~
== BANOMEN @456
== KIMJ @457
== BANOMEN @458
== KIMJ @459
EXIT

CHAIN
IF ~Global("ANOMENKIM","GLOBAL",4)
Global("kimanomenk4","LOCALS",0)~ THEN KIMJ KimAnomen6
@460
DO ~SetGlobal("kimanomenk4","LOCALS",1)~
== BANOMEN @461
== KIMJ @462
== BVICONI IF ~IsValidForPartyDialog("Viconia")~ THEN
@463
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN
@464
== KIMJ @465
== BANOMEN @466
== KIMJ @467
EXIT
