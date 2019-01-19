package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval xpafirst {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc xpafirst::YYABORT {} {
    return -code return 1
}

proc xpafirst::YYACCEPT {} {
    return -code return 0
}

proc xpafirst::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc xpafirst::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc xpafirst::yyerror {s} {
    puts stderr $s
}

proc xpafirst::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc xpafirst::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set xpafirst::table {
  0:257 shift
  13:263 reduce
  0:258 shift
  11:263,target 20
  5:0,target 4
  0:259 shift
  0:260 shift
  15:263 reduce
  15:0,target 18
  9:0 reduce
  0:261 shift
  0:266,target 9
  11:0 reduce
  0:276,target 18
  0:262 shift
  0:263 reduce
  0:264 shift
  20:263 shift
  19:263 reduce
  7:263,target 14
  2:263 reduce
  0:265 shift
  15:0 reduce
  0:266 shift
  4:263 reduce
  0:267 shift
  20:263,target 21
  19:263,target 12
  2:263,target 5
  0:265,target 8
  0:268 shift
  6:263 reduce
  6:0,target 7
  0:270 shift
  0:269 shift
  19:0 reduce
  16:0,target 11
  0:271 shift
  2:0 reduce
  14:263,target 17
  8:263 reduce
  0:272 shift
  0:273 goto
  0:274 goto
  6:0 reduce
  0:276 goto
  0:264,target 7
  0:277 goto
  0:274,target 17
  7:0,target 14
  17:0,target 0
  12:0 reduce
  5:263,target 4
  0:0,target 1
  10:0,target 16
  0:263,target 1
  16:0 reduce
  0:273,target 16
  12:263,target 21
  21:0 reduce
  8:0,target 15
  3:0 reduce
  18:0,target 8
  10:263 reduce
  1:0,target 2
  11:0,target 20
  0:262,target 6
  12:263 reduce
  8:263,target 15
  0:272,target 15
  7:0 reduce
  14:263 reduce
  3:263,target 3
  18:275,target 20
  16:263 reduce
  18:263 reduce
  15:263,target 18
  13:0 reduce
  9:0,target 19
  0:261,target 5
  1:263 reduce
  19:0,target 12
  2:0,target 5
  0:271,target 14
  12:0,target 21
  3:263 reduce
  10:263,target 16
  17:0 accept
  5:263 reduce
  0:0 reduce
  7:263 reduce
  0:259,target 3
  0:260,target 4
  9:263 reduce
  6:263,target 7
  4:0 reduce
  0:270,target 13
  0:269,target 12
  21:0,target 10
  3:0,target 3
  18:263,target 9
  18:275 goto
  13:0,target 13
  1:263,target 2
  8:0 reduce
  10:0 reduce
  13:263,target 13
  0:258,target 2
  0:268,target 11
  14:0 reduce
  9:263,target 19
  4:0,target 6
  14:0,target 17
  18:0 reduce
  0:257,target 1
  1:0 reduce
  4:263,target 6
  0:267,target 10
  0:277,target 19
  16:263,target 11
  11:263 reduce
  5:0 reduce
}

array set xpafirst::rules {
  9,l 275
  11,l 276
  15,l 276
  20,l 277
  19,l 277
  2,l 273
  6,l 273
  12,l 276
  16,l 276
  21,l 277
  3,l 273
  7,l 273
  13,l 276
  0,l 278
  17,l 276
  4,l 273
  8,l 274
  10,l 274
  14,l 276
  18,l 277
  1,l 273
  5,l 273
}

array set xpafirst::rules {
  5,dc 1
  0,dc 1
  17,dc 1
  12,dc 1
  8,dc 1
  21,dc 1
  3,dc 1
  15,dc 1
  10,dc 3
  6,dc 1
  18,dc 1
  1,dc 0
  13,dc 1
  9,dc 0
  4,dc 1
  16,dc 1
  11,dc 1
  7,dc 1
  20,dc 1
  19,dc 1
  2,dc 1
  14,dc 1
}

array set xpafirst::rules {
  13,line 55
  7,line 45
  10,line 49
  4,line 42
  18,line 63
  1,line 39
  15,line 57
  9,line 48
  12,line 53
  6,line 44
  21,line 66
  3,line 41
  17,line 60
  14,line 56
  8,line 48
  11,line 52
  5,line 43
  20,line 65
  19,line 64
  2,line 40
  9,e 1
  16,line 59
}

array set xpafirst::lr1_table {
  13,trans {}
  17 {{0 0 1}}
  0 {{0 0 0} {8 0 0} {10 0 0} {11 {0 263} 0} {12 {0 263} 0} {13 {0 263} 0} {14 {0 263} 0} {15 {0 263} 0} {16 {0 263} 0} {17 {0 263} 0} {1 {0 263} 0} {2 {0 263} 0} {3 {0 263} 0} {4 {0 263} 0} {5 {0 263} 0} {6 {0 263} 0} {7 {0 263} 0} {18 {0 263} 0} {19 {0 263} 0} {20 {0 263} 0} {21 {0 263} 0}}
  14,trans {}
  18 {{8 0 1} {10 0 1} {9 263 0}}
  1 {{2 {0 263} 1}}
  20 {{10 0 2}}
  15,trans {}
  19 {{12 {0 263} 1}}
  2 {{5 {0 263} 1}}
  21 {{10 0 3}}
  16,trans {}
  3 {{3 {0 263} 1}}
  17,trans {}
  0,trans {{257 1} {258 2} {259 3} {260 4} {261 5} {262 6} {264 7} {265 8} {266 9} {267 10} {268 11} {269 12} {270 13} {271 14} {272 15} {273 16} {274 17} {276 18} {277 19}}
  4 {{6 {0 263} 1}}
  18,trans {{275 20}}
  1,trans {}
  5 {{4 {0 263} 1}}
  20,trans {{263 21}}
  19,trans {}
  2,trans {}
  6 {{7 {0 263} 1}}
  21,trans {}
  3,trans {}
  7 {{14 {0 263} 1}}
  4,trans {}
  8 {{15 {0 263} 1}}
  5,trans {}
  9 {{19 {0 263} 1}}
  10 {{16 {0 263} 1}}
  6,trans {}
  11 {{20 {0 263} 1}}
  7,trans {}
  12 {{21 {0 263} 1}}
  8,trans {}
  13 {{13 {0 263} 1}}
  10,trans {}
  9,trans {}
  14 {{17 {0 263} 1}}
  11,trans {}
  15 {{18 {0 263} 1}}
  12,trans {}
  16 {{11 {0 263} 1}}
}

array set xpafirst::token_id_table {
  264,line 18
  270,t 0
  269,t 0
  276,line 51
  265,title DISCONNECT
  274,t 1
  261,line 11
  257,t 0
  270,title NOXPANS
  269,title LOCALHOST
  273,line 38
  278,t 1
  257,line 7
  262,t 0
  274,title {}
  270,line 24
  269,line 23
  259,title ON
  260,title OFF
  266,t 0
  278,title {}
  error error
  271,t 0
  264,title CONNECT
  266,line 20
  278,line 67
  275,t 1
  error,line 37
  268,title LOCAL
  258,t 0
  263,line 14
  error,title {}
  275,line 48
  273,title {}
  263,t 0
  259,line 9
  260,line 10
  258,title NO
  277,title {}
  272,line 26
  267,t 0
  263,title string
  272,t 0
  268,line 22
  267,title INFO
  257 YES_
  276,t 1
  258 NO_
  259,t 0
  259 ON_
  260 OFF_
  260,t 0
  272,title UNIX
  261 TRUE_
  265,line 19
  262 FALSE_
  263 STRING_
  277,line 62
  257,title YES
  264 CONNECT_
  264,t 0
  276,title {}
  265 DISCONNECT_
  262,line 12
  266 INET_
  267 INFO_
  0,t 0
  0 {$}
  262,title FALSE
  268 LOCAL_
  268,t 0
  274,line 47
  270 NOXPANS_
  269 LOCALHOST_
  error,t 0
  271 TCL_
  272 UNIX_
  258,line 8
  273,t 1
  273 yesno
  266,title INET
  274 command
  275 @PSEUDO1
  271,line 25
  276 xpa
  277,t 1
  277 method
  271,title TCL
  278 start'
  261,t 0
  267,line 21
  275,title {}
  265,t 0
  261,title TRUE
}

proc xpafirst::yyparse {} {
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
                    1 { set _ 1 }
                    2 { set _ 1 }
                    3 { set _ 1 }
                    4 { set _ 1 }
                    5 { set _ 0 }
                    6 { set _ 0 }
                    7 { set _ 0 }
                    9 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    11 { ProcessCmdSet pds9 xpa $1 }
                    12 { ProcessCmdSet env XPA_METHOD $1 }
                    13 { ProcessCmdSet env XPA_NSREGISTER false }
                    18 { set _ unix }
                    19 { set _ inet }
                    20 { set _ local }
                    21 { set _ localhost }
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

proc xpa::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
