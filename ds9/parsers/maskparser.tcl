package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval mask {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc mask::YYABORT {} {
    return -code return 1
}

proc mask::YYACCEPT {} {
    return -code return 0
}

proc mask::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc mask::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc mask::yyerror {s} {
    puts stderr $s
}

proc mask::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc mask::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set mask::table {
  21:289 shift
  7:264,target 29
  30:290,target 9
  29:290,target 8
  27:0 reduce
  21:305 goto
  48:0 reduce
  0:306,target 9
  30:290 reduce
  29:290 reduce
  7:283,target 48
  18:290,target 42
  2:0 reduce
  7:262,target 27
  56:0,target 45
  53:290,target 52
  38:290 reduce
  24:0 reduce
  48:0,target 27
  41:0,target 20
  45:0 reduce
  33:0,target 12
  25:0,target 4
  0:294,target 4
  17:0,target 47
  42:290,target 21
  10:0,target 34
  7:281,target 46
  47:290 reduce
  4:288,target 12
  31:290,target 10
  7:259,target 24
  7:260,target 25
  17:290 reduce
  56:290 reduce
  42:0 reduce
  7:310,target 55
  0:292,target 2
  6:288 shift
  19:289,target 32
  19:290,target 32
  20:289,target 33
  20:290,target 33
  6:305,target 21
  6:289 shift
  26:290 reduce
  7:278,target 43
  6:305 goto
  54:290,target 53
  7:257,target 22
  17:0 reduce
  38:0 reduce
  35:290 reduce
  43:290,target 22
  59:0 reduce
  0:300,target 7
  0:290,target 37
  7:276,target 41
  53:0,target 52
  44:290 reduce
  32:290,target 11
  45:0,target 24
  37:0,target 16
  14:0 reduce
  30:0,target 9
  29:0,target 8
  22:0,target 1
  35:0 reduce
  14:0,target 50
  14:290 reduce
  21:289,target 20
  56:0 reduce
  53:290 reduce
  3:290 shift
  7:274,target 39
  10:290,target 35
  55:290,target 44
  23:290 reduce
  9:0 accept
  11:0 reduce
  32:0 reduce
  44:290,target 23
  1:290,target 40
  53:0 reduce
  32:290 reduce
  7:303,target 53
  6:288,target 19
  33:290,target 12
  7:272,target 37
  41:290 reduce
  28:0 reduce
  22:290,target 1
  0:0,target 37
  8:305,target 56
  50:0 reduce
  49:0 reduce
  11:290 reduce
  50:290 reduce
  50:0,target 29
  49:290 reduce
  49:0,target 28
  11:290,target 41
  56:290,target 45
  42:0,target 21
  34:0,target 13
  26:0,target 5
  0:300 shift
  0:290 reduce
  7:269,target 34
  7:270,target 35
  0:301 shift
  0:291 shift
  18:0,target 42
  19:288 reduce
  20:288 reduce
  0:292 shift
  11:0,target 41
  19:289 reduce
  19:290 reduce
  20:289 reduce
  20:290 reduce
  0:293 shift
  45:290,target 24
  25:0 reduce
  0:294 shift
  58:290 reduce
  2:290,target 39
  0:306 goto
  46:0 reduce
  8:288 shift
  0:308 goto
  0:298 shift
  8:289 shift
  0:299 shift
  34:290,target 13
  28:290 reduce
  4:296,target 14
  0:0 reduce
  8:305 goto
  7:267,target 32
  23:290,target 2
  22:0 reduce
  37:290 reduce
  43:0 reduce
  0:299,target 6
  12:290,target 46
  57:290,target 59
  7:286,target 51
  46:290 reduce
  7:265,target 30
  46:290,target 25
  3:290,target 11
  18:0 reduce
  16:290 reduce
  54:0,target 53
  40:0 reduce
  39:0 reduce
  55:290 reduce
  46:0,target 25
  8:288,target 19
  38:0,target 17
  35:290,target 14
  31:0,target 10
  23:0,target 2
  5:290 reduce
  7:284,target 49
  15:0,target 48
  25:290 reduce
  24:290,target 3
  4:302,target 17
  7:263,target 28
  15:0 reduce
  36:0 reduce
  34:290 reduce
  13:290,target 49
  58:290,target 43
  7:282,target 47
  10:307,target 57
  47:290,target 26
  43:290 reduce
  7:261,target 26
  12:0 reduce
  33:0 reduce
  21:305,target 58
  36:290,target 15
  13:290 reduce
  54:0 reduce
  0:293,target 3
  52:290 reduce
  1:0,target 40
  7:279,target 44
  7:280,target 45
  25:290,target 4
  2:290 reduce
  22:290 reduce
  58:0,target 43
  51:0,target 30
  7:258,target 23
  43:0,target 22
  35:0,target 14
  30:0 reduce
  29:0 reduce
  14:290,target 50
  27:0,target 6
  7:257 shift
  19:0,target 32
  20:0,target 33
  51:0 reduce
  7:258 shift
  12:0,target 46
  31:290 reduce
  0:301,target 8
  0:291,target 1
  7:259 shift
  7:260 shift
  19:288,target 32
  20:288,target 33
  7:261 shift
  7:262 shift
  48:290,target 27
  7:263 shift
  7:277,target 42
  5:290,target 38
  7:264 shift
  7:265 shift
  7:266 shift
  7:267 shift
  40:290 reduce
  39:290 reduce
  7:268 shift
  37:290,target 16
  26:0 reduce
  7:269 shift
  7:270 shift
  7:271 shift
  7:272 shift
  47:0 reduce
  7:273 shift
  7:274 shift
  10:290 reduce
  7:275 shift
  26:290,target 5
  7:276 shift
  48:290 reduce
  7:277 shift
  7:275,target 40
  7:278 shift
  1:0 reduce
  7:279 shift
  7:280 shift
  7:281 shift
  7:282 shift
  10:307 goto
  7:283 shift
  15:290,target 48
  18:290 reduce
  23:0 reduce
  7:284 shift
  7:285 shift
  57:290 shift
  7:286 shift
  44:0 reduce
  21:288,target 19
  5:0,target 38
  7:287 shift
  7:304,target 54
  50:290,target 29
  49:290,target 28
  27:290 reduce
  6:289,target 20
  55:0,target 44
  7:303 goto
  47:0,target 26
  7:304 goto
  7:273,target 38
  40:0,target 19
  39:0,target 18
  32:0,target 11
  38:290,target 17
  24:0,target 3
  16:0,target 51
  19:0 reduce
  20:0 reduce
  7:310 goto
  36:290 reduce
  41:0 reduce
  27:290,target 6
  4:309,target 18
  4:299,target 16
  45:290 reduce
  7:271,target 36
  16:290,target 51
  16:0 reduce
  15:290 reduce
  37:0 reduce
  54:290 reduce
  51:290,target 30
  58:0 reduce
  4:288 shift
  24:290 reduce
  4:297,target 15
  4:302 shift
  40:290,target 19
  39:290,target 18
  7:268,target 33
  4:295 shift
  9:0,target 0
  13:0 reduce
  4:296 shift
  2:0,target 39
  4:297 shift
  34:0 reduce
  28:290,target 7
  4:299 shift
  4:309 goto
  59:0,target 36
  33:290 reduce
  55:0 reduce
  52:0,target 31
  44:0,target 23
  7:287,target 52
  36:0,target 15
  28:0,target 7
  17:290,target 47
  4:295,target 13
  13:0,target 49
  7:266,target 31
  42:290 reduce
  10:0 reduce
  31:0 reduce
  52:290,target 31
  0:308,target 10
  0:298,target 5
  8:289,target 20
  12:290 reduce
  52:0 reduce
  51:290 reduce
  7:285,target 50
  41:290,target 20
  1:290 reduce
  5:0 reduce
  21:288 shift
}

array set mask::rules {
  9,l 304
  11,l 304
  32,l 305
  53,l 310
  6,l 304
  28,l 304
  50,l 309
  49,l 309
  3,l 303
  25,l 304
  46,l 308
  0,l 311
  22,l 304
  43,l 308
  18,l 304
  40,l 308
  39,l 308
  15,l 304
  36,l 306
  12,l 304
  33,l 305
  7,l 304
  29,l 304
  30,l 304
  51,l 309
  4,l 303
  26,l 304
  47,l 309
  1,l 303
  23,l 304
  44,l 308
  19,l 304
  20,l 304
  41,l 308
  16,l 304
  37,l 308
  13,l 304
  34,l 306
  8,l 304
  10,l 304
  31,l 304
  52,l 310
  5,l 304
  27,l 304
  48,l 309
  2,l 303
  24,l 304
  45,l 308
  21,l 304
  42,l 308
  17,l 304
  38,l 308
  14,l 304
  35,l 307
}

array set mask::rules {
  12,dc 1
  26,dc 1
  3,dc 1
  41,dc 2
  18,dc 1
  33,dc 1
  9,dc 1
  47,dc 1
  11,dc 1
  25,dc 1
  2,dc 1
  40,dc 1
  39,dc 1
  17,dc 1
  32,dc 1
  8,dc 1
  46,dc 2
  10,dc 1
  24,dc 1
  1,dc 1
  38,dc 1
  53,dc 1
  16,dc 1
  31,dc 1
  7,dc 1
  45,dc 2
  23,dc 1
  0,dc 1
  37,dc 0
  52,dc 1
  15,dc 1
  29,dc 1
  30,dc 1
  6,dc 1
  44,dc 2
  22,dc 1
  36,dc 3
  51,dc 1
  14,dc 1
  28,dc 1
  5,dc 1
  43,dc 3
  21,dc 1
  35,dc 0
  50,dc 1
  49,dc 1
  13,dc 1
  27,dc 1
  4,dc 1
  42,dc 2
  19,dc 1
  20,dc 1
  34,dc 1
  48,dc 1
}

array set mask::rules {
  41,line 144
  7,line 106
  37,line 140
  4,line 102
  34,line 136
  1,line 99
  31,line 130
  27,line 126
  24,line 123
  21,line 120
  17,line 116
  14,line 113
  11,line 110
  53,line 161
  50,line 156
  49,line 155
  46,line 150
  43,line 146
  9,line 108
  40,line 143
  39,line 142
  6,line 105
  36,line 137
  3,line 101
  33,line 133
  29,line 128
  30,line 129
  26,line 125
  23,line 122
  19,line 118
  20,line 119
  16,line 115
  13,line 112
  10,line 109
  52,line 160
  48,line 154
  45,line 149
  42,line 145
  8,line 107
  38,line 141
  5,line 104
  35,line 136
  2,line 100
  32,line 132
  28,line 127
  25,line 124
  22,line 121
  18,line 117
  15,line 114
  12,line 111
  35,e 1
  51,line 157
  47,line 153
  44,line 147
}

array set mask::lr1_table {
  35 {{14 {0 290} 1}}
  14,trans {}
  36 {{15 {0 290} 1}}
  33,trans {}
  37 {{16 {0 290} 1}}
  52,trans {}
  38 {{17 {0 290} 1}}
  39 {{18 {0 290} 1}}
  40 {{19 {0 290} 1}}
  18,trans {}
  41 {{20 {0 290} 1}}
  1,trans {}
  37,trans {}
  42 {{21 {0 290} 1}}
  56,trans {}
  43 {{22 {0 290} 1}}
  44 {{23 {0 290} 1}}
  23,trans {}
  45 {{24 {0 290} 1}}
  5,trans {}
  42,trans {}
  46 {{25 {0 290} 1}}
  61,trans {}
  47 {{26 {0 290} 1}}
  48 {{27 {0 290} 1}}
  27,trans {}
  9,trans {}
  50 {{29 {0 290} 1}}
  49 {{28 {0 290} 1}}
  46,trans {}
  51 {{30 {0 290} 1}}
  52 {{31 {0 290} 1}}
  13,trans {}
  53 {{52 {0 290} 1}}
  32,trans {}
  54 {{53 {0 290} 1}}
  51,trans {}
  55 {{44 {0 290} 2}}
  56 {{32 {0 290} 1}}
  17,trans {}
  57 {{33 {0 290} 1}}
  0,trans {{291 1} {292 2} {293 3} {294 4} {298 5} {299 6} {300 7} {301 8} {306 9} {308 10}}
  36,trans {}
  58 {{45 {0 290} 2}}
  55,trans {}
  60 {{43 {0 290} 3}}
  59 {{36 0 2}}
  61 {{36 0 3}}
  22,trans {}
  4,trans {{288 12} {295 13} {296 14} {297 15} {299 16} {302 17} {309 18}}
  41,trans {}
  60,trans {}
  59,trans {{290 61}}
  26,trans {}
  8,trans {{288 56} {289 57} {305 58}}
  45,trans {}
  12,trans {}
  31,trans {}
  50,trans {}
  49,trans {}
  16,trans {}
  35,trans {}
  54,trans {}
  21,trans {{288 56} {289 57} {305 60}}
  3,trans {{290 11}}
  40,trans {}
  39,trans {}
  58,trans {}
  10 {{34 0 1} {36 0 1} {35 290 0}}
  11 {{41 {0 290} 2}}
  25,trans {}
  7,trans {{257 22} {258 23} {259 24} {260 25} {261 26} {262 27} {263 28} {264 29} {265 30} {266 31} {267 32} {268 33} {269 34} {270 35} {271 36} {272 37} {273 38} {274 39} {275 40} {276 41} {277 42} {278 43} {279 44} {280 45} {281 46} {282 47} {283 48} {284 49} {285 50} {286 51} {287 52} {303 53} {304 54} {310 55}}
  12 {{46 {0 290} 2}}
  44,trans {}
  13 {{49 {0 290} 1}}
  14 {{50 {0 290} 1}}
  11,trans {}
  15 {{48 {0 290} 1}}
  30,trans {}
  29,trans {}
  16 {{51 {0 290} 1}}
  48,trans {}
  0 {{0 0 0} {34 0 0} {36 0 0} {37 {0 290} 0} {38 {0 290} 0} {39 {0 290} 0} {40 {0 290} 0} {41 {0 290} 0} {42 {0 290} 0} {43 {0 290} 0} {44 {0 290} 0} {45 {0 290} 0} {46 {0 290} 0}}
  17 {{47 {0 290} 1}}
  1 {{40 {0 290} 1}}
  18 {{42 {0 290} 2}}
  15,trans {}
  2 {{39 {0 290} 1}}
  19 {{32 {288 289} 1}}
  20 {{33 {288 289} 1}}
  34,trans {}
  3 {{41 {0 290} 1}}
  21 {{43 {0 290} 2} {32 {0 290} 0} {33 {0 290} 0}}
  53,trans {}
  4 {{42 {0 290} 1} {46 {0 290} 1} {47 {0 290} 0} {48 {0 290} 0} {49 {0 290} 0} {50 {0 290} 0} {51 {0 290} 0}}
  22 {{1 {0 290} 1}}
  5 {{38 {0 290} 1}}
  23 {{2 {0 290} 1}}
  20,trans {}
  19,trans {}
  6 {{43 {0 290} 1} {32 {288 289} 0} {33 {288 289} 0}}
  2,trans {}
  24 {{3 {0 290} 1}}
  38,trans {}
  7 {{44 {0 290} 1} {52 {0 290} 0} {53 {0 290} 0} {1 {0 290} 0} {2 {0 290} 0} {3 {0 290} 0} {4 {0 290} 0} {5 {0 290} 0} {6 {0 290} 0} {7 {0 290} 0} {8 {0 290} 0} {9 {0 290} 0} {10 {0 290} 0} {11 {0 290} 0} {12 {0 290} 0} {13 {0 290} 0} {14 {0 290} 0} {15 {0 290} 0} {16 {0 290} 0} {17 {0 290} 0} {18 {0 290} 0} {19 {0 290} 0} {20 {0 290} 0} {21 {0 290} 0} {22 {0 290} 0} {23 {0 290} 0} {24 {0 290} 0} {25 {0 290} 0} {26 {0 290} 0} {27 {0 290} 0} {28 {0 290} 0} {29 {0 290} 0} {30 {0 290} 0} {31 {0 290} 0}}
  25 {{4 {0 290} 1}}
  57,trans {}
  8 {{45 {0 290} 1} {32 {0 290} 0} {33 {0 290} 0}}
  26 {{5 {0 290} 1}}
  9 {{0 0 1}}
  27 {{6 {0 290} 1}}
  24,trans {}
  6,trans {{288 19} {289 20} {305 21}}
  28 {{7 {0 290} 1}}
  43,trans {}
  29 {{8 {0 290} 1}}
  30 {{9 {0 290} 1}}
  31 {{10 {0 290} 1}}
  10,trans {{307 59}}
  32 {{11 {0 290} 1}}
  28,trans {}
  33 {{12 {0 290} 1}}
  47,trans {}
  34 {{13 {0 290} 1}}
}

array set mask::token_id_table {
  286 WCSY_
  286,t 0
  287 WCSZ_
  292,line 48
  302,line 58
  288 INT_
  265,title WCSD
  289 REAL_
  290 STRING_
  300 SYSTEM_
  284,title WCSW
  291 CLEAR_
  301 TRANSPARENCY_
  292 CLOSE_
  302 ZERO_
  288,line 40
  293 COLOR_
  303 coordsys
  304 wcssys
  294 MARK_
  305 numeric
  295 NAN_
  306 command
  296 NONNAN_
  307 @PSEUDO1
  262,t 0
  297 NONZERO_
  308 mask
  285,line 36
  298 OPEN_
  310 system
  309 mark
  299 RANGE_
  311 start'
  283,t 0
  282,line 33
  264,title WCSC
  283,title WCSV
  278,line 29
  error,line 97
  258,t 0
  275,line 26
  279,t 0
  280,t 0
  311,t 1
  272,line 23
  263,title WCSB
  282,title WCSU
  311,title {}
  268,line 19
  276,t 0
  265,line 16
  307,t 1
  297,t 0
  262,line 13
  262,title WCSA
  0 {$}
  0,t 0
  281,title WCST
  310,title {}
  309,title {}
  299,title RANGE
  error,t 0
  258,line 8
  273,t 0
  304,t 1
  294,t 0
  261,title WCS
  279,title WCSR
  280,title WCSS
  308,title {}
  269,t 0
  270,t 0
  298,title OPEN
  291,t 0
  301,t 0
  311,line 162
  307,line 136
  266,t 0
  260,title DETECTOR
  259,title AMPLIFIER
  297,line 53
  278,title WCSQ
  307,title {}
  297,title NONZERO
  287,t 0
  304,line 103
  294,line 50
  291,line 47
  301,line 57
  error,title {}
  263,t 0
  258,title PHYSICAL
  287,line 38
  277,title WCSP
  284,t 0
  306,title {}
  296,title NONNAN
  284,line 35
  281,line 32
  260,t 0
  259,t 0
  281,t 0
  257,title IMAGE
  277,line 28
  276,title WCSO
  305,title {}
  295,title NAN
  274,line 25
  271,line 22
  277,t 0
  308,t 1
  267,line 18
  298,t 0
  275,title WCSN
  304,title {}
  294,title MARK
  264,line 15
  261,line 12
  274,t 0
  305,t 1
  295,t 0
  257,line 7
  274,title WCSM
  293,title COLOR
  303,title {}
  271,t 0
  error error
  292,t 0
  302,t 0
  273,title WCSL
  292,title CLOSE
  302,title ZERO
  267,t 0
  310,line 159
  309,line 152
  299,line 55
  288,t 0
  306,line 135
  296,line 52
  272,title WCSK
  303,line 98
  291,title CLEAR
  293,line 49
  301,title TRANSPARENCY
  264,t 0
  285,t 0
  289,line 41
  290,line 43
  300,line 56
  286,line 37
  271,title WCSJ
  261,t 0
  283,line 34
  289,title float
  290,title string
  300,title SYSTEM
  282,t 0
  279,line 30
  280,line 31
  276,line 27
  257,t 0
  269,title WCSH
  270,title WCSI
  273,line 24
  288,title integer
  278,t 0
  310,t 1
  309,t 1
  299,t 0
  269,line 20
  270,line 21
  266,line 17
  268,title WCSG
  275,t 0
  263,line 14
  287,title WCSZ
  306,t 1
  296,t 0
  260,line 10
  259,line 9
  272,t 0
  267,title WCSF
  303,t 1
  257 IMAGE_
  286,title WCSY
  293,t 0
  258 PHYSICAL_
  260 DETECTOR_
  259 AMPLIFIER_
  261 WCS_
  262 WCSA_
  263 WCSB_
  264 WCSC_
  265 WCSD_
  266 WCSE_
  267 WCSF_
  268,t 0
  268 WCSG_
  269 WCSH_
  270 WCSI_
  271 WCSJ_
  272 WCSK_
  289,t 0
  290,t 0
  300,t 0
  266,title WCSE
  273 WCSL_
  274 WCSM_
  285,title WCSX
  275 WCSN_
  308,line 139
  276 WCSO_
  298,line 54
  277 WCSP_
  278 WCSQ_
  279 WCSR_
  280 WCSS_
  281 WCST_
  305,line 131
  282 WCSU_
  295,line 51
  265,t 0
  283 WCSV_
  284 WCSW_
  285 WCSX_
}

proc mask::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt
    variable lr1_table
    variable token_id_table
    variable yyerr
    variable save_state

    set yycnt 0
    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0
    set yyerr 0
    set save_state 0

    while {$accepted == 0} {
        set state [lindex $state_stack end]
        if {$token == ""} {
            set yylval ""
            set token [yylex]
            set buflval $yylval
	    if {$token>0} {
	        incr yycnt
            }
        }
        if {![info exists table($state:$token)] || $yyerr} {
	    if {!$yyerr} {
	        set save_state $state
	    }
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
 
	        set rr { }
                if {[info exists lr1_table($save_state,trans)] && [llength $lr1_table($save_state,trans)] >= 1} {
                    foreach trans $lr1_table($save_state,trans) {
                        foreach {tok_id nextstate} $trans {
			    set ss $token_id_table($tok_id,title)
			    if {$ss != {}} {
			        append rr "$ss, "
                            }
                        }
                    }
                }
		set rr [string trimleft $rr { }]
		set rr [string trimright $rr {, }]
                yyerror "parse error, expecting: $rr"


                return 1
            }
            lappend state_stack [set state $table($state:error,target)]
            lappend value_stack {}
            # consume tokens until it finds an acceptable one
            while {![info exists table($state:$token)]} {
                if {$token == 0} {
                    yyerror "end of file while recovering from error"
                    return 1
                }
                set yylval {}
                set token [yylex]
                set buflval $yylval
            }
            continue
        }
        switch -- $table($state:$token) {
            shift {
                lappend state_stack $table($state:$token,target)
                lappend value_stack $buflval
                set token ""
            }
            reduce {
                set rule $table($state:$token,target)
                set ll $rules($rule,l)
                if {[info exists rules($rule,e)]} {
                    set dc $rules($rule,e)
                } else {
                    set dc $rules($rule,dc)
                }
                set stackpointer [expr {[llength $state_stack]-$dc}]
                setupvalues $value_stack $stackpointer $dc
                set _ $1
                set yylval [lindex $value_stack end]
                switch -- $rule {
                    1 { set _ image }
                    2 { set _ physical }
                    3 { set _ amplifier }
                    4 { set _ detector }
                    5 { set _ wcs }
                    6 { set _ wcsa }
                    7 { set _ wcsb }
                    8 { set _ wcsc }
                    9 { set _ wcsd }
                    10 { set _ wcse }
                    11 { set _ wcsf }
                    12 { set _ wcsg }
                    13 { set _ wcsh }
                    14 { set _ wcsi }
                    15 { set _ wcsj }
                    16 { set _ wcsk }
                    17 { set _ wcsl }
                    18 { set _ wcsm }
                    19 { set _ wcsn }
                    20 { set _ wcso }
                    21 { set _ wcsp }
                    22 { set _ wcsq }
                    23 { set _ wcsr }
                    24 { set _ wcss }
                    25 { set _ wcst }
                    26 { set _ wcsu }
                    27 { set _ wcsv }
                    28 { set _ wcsw }
                    29 { set _ wcsx }
                    30 { set _ wcsy }
                    31 { set _ wcsz }
                    32 { set _ $1 }
                    33 { set _ $1 }
                    35 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    37 { global parse; set parse(result) mask }
                    39 { MaskDestroyDialog }
                    40 { MaskClear }
                    41 { ProcessCmdSet mask color $2 MaskColor }
                    42 { ProcessCmdSet mask mark $2 MaskMark }
                    43 { ProcessCmdSet2 mask low $2 high $3 MaskRange }
                    45 { ProcessCmdSet mask transparency $2 MaskTransparency }
                    46 { ProcessCmdSet mask mark $2 MaskMark }
                    47 { set _ zero }
                    48 { set _ nonzero }
                    49 { set _ nan }
                    50 { set _ nonnan }
                    51 { set _ range }
                    52 { ProcessCmdSet mask system $1 MaskSystem }
                    53 { ProcessCmdSet mask system $1 MaskSystem }
                }
                unsetupvalues $dc
                # pop off tokens from the stack if normal rule
                if {![info exists rules($rule,e)]} {
                    incr stackpointer -1
                    set state_stack [lrange $state_stack 0 $stackpointer]
                    set value_stack [lrange $value_stack 0 $stackpointer]
                }
                # now do the goto transition
                lappend state_stack $table([lindex $state_stack end]:$ll,target)
                lappend value_stack $_
            }
            accept {
                set accepted 1
            }
            goto -
            default {
                puts stderr "Internal parser error: illegal command $table($state:$token)"
                return 2
            }
        }
    }
    return 0
}

######
# end autogenerated taccle functions
######

proc mask::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
