package provide DS9 1.0

######
# Begin autogenerated fickle (version 2.1) routines.
# Although fickle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/fickle for other details.
######

namespace eval mosaicwcs {
    variable yylval

    variable yytext {}
    variable yyleng 0
    variable yyin stdin
    variable yyout stdout
    variable yy_current_buffer {}

    variable yylineno 1

    variable index_ 0
    variable done_ 0
}

# ECHO copies yytext to the scanner's output if no arguments are
# given.  The scanner writes its ECHO output to the yyout global
# (default, stdout), which may be redefined by the user simply by
# assigning it to some other channel.
#   -- from the flex(1) man page
proc mosaicwcs::ECHO {{s ""}} {
    variable yytext
    variable yyout

    if {$s == ""} {
        puts -nonewline $yyout $yytext
    } else {
        puts -nonewline $yyout $s
    }
}

# YY_FLUSH_BUFFER flushes the scanner's internal buffer so that the
# next time the scanner attempts to match a token, it will first
# refill the buffer using YY_INPUT.
#   -- from the flex(1) man page
proc mosaicwcs::YY_FLUSH_BUFFER {} {
    variable yy_current_buffer
    variable index_
    variable done_

    set yy_current_buffer ""
    set index_ 0
    set done_ 0
}

# yyrestart(new_file) may be called to point yyin at the new input
# file.  The switch-over to the new file is immediate (any previously
# buffered-up input is lost).  Note that calling yyrestart with yyin
# as an argument thus throws away the current input buffer and
# continues scanning the same input file.
#   -- from the flex(1) man page
proc mosaicwcs::yyrestart {new_file} {
    variable yyin

    set yyin $new_file
    YY_FLUSH_BUFFER
}

# The nature of how it gets its input can be controlled by defining
# the YY_INPUT macro.  YY_INPUT's calling sequence is
# "YY_INPUT(buf,result,max_size)".  Its action is to place up to
# max_size characters in the character array buf and return in the
# integer variable result either the number of characters read or the
# constant YY_NULL (0 on Unix systems) to indicate EOF.  The default
# YY_INPUT reads from the global file-pointer "yyin".
#   -- from the flex(1) man page
proc mosaicwcs::YY_INPUT {buf result max_size} {
    variable yyin

    upvar $result ret_val
    upvar $buf new_data
    if {$yyin != ""} {
        set new_data [read $yyin $max_size]
        set ret_val [string length $new_data]
    } else {
        set new_data ""
        set ret_val 0
    }
}

# yy_scan_string sets up input buffers for scanning in-memory
# strings instead of files.  Note that switching input sources does
# not change the start condition.
#   -- from the flex(1) man page
proc mosaicwcs::yy_scan_string {str} {
    variable yy_current_buffer
    variable yyin

    append yy_current_buffer $str
    set yyin ""
}

# unput(c) puts the character c back onto the input stream.  It will
# be the next character scanned.
#   -- from the flex(1) man page
proc mosaicwcs::unput {c} {
    variable yy_current_buffer
    variable index_

    set s [string range $yy_current_buffer 0 [expr {$index_ - 1}]]
    append s $c
    set yy_current_buffer [append s [string range $yy_current_buffer $index_ end]]
}

# Returns all but the first n characters of the current token back to
# the input stream, where they will be rescanned when the scanner
# looks for the next match.  yytext and yyleng are adjusted
# appropriately.
#   -- from the flex(1) man page
proc mosaicwcs::yyless {n} {
    variable yy_current_buffer
    variable index_
    variable yytext
    variable yyleng

    set s [string range $yy_current_buffer 0 [expr {$index_ - 1}]]
    append s [string range $yytext $n end]
    set yy_current_buffer [append s [string range $yy_current_buffer $index_ end]]
    set yytext [string range $yytext 0 [expr {$n - 1}]]
    set yyleng [string length $yytext]
}

# input() reads the next character from the input stream.
#   -- from the flex(1) man page
proc mosaicwcs::input {} {
    variable yy_current_buffer
    variable index_
    variable done_

    if {[string length $yy_current_buffer] - $index_ < 1024} {
       set new_buffer ""
       set new_buffer_size 0
       if {$done_ == 0} {
           YY_INPUT new_buffer new_buffer_size 1024
           append yy_current_buffer $new_buffer
           if {$new_buffer_size == 0} {
               set done_ 1
           }
       }
       if $done_ {
           if {[string length $yy_current_buffer] - $index_ == 0} {
               return {}
           }
        }
    }
    set c [string index $yy_current_buffer $index_]
    incr index_
    return $c
}

######
# autogenerated yylex function created by fickle
######

# Whenever yylex() is called, it scans tokens from the global input
# file yyin (which defaults to stdin).  It continues until it either
# reaches an end-of-file (at which point it returns the value 0) or
# one of its actions executes a return statement.
#   -- from the flex(1) man page
proc mosaicwcs::yylex {} {
    variable yylval

    variable yytext
    variable yylineno
    variable yyleng
    variable yy_current_buffer
    variable yy_flex_debug

    variable index_
    variable done_
    variable state_table_

set WCS_ 257
set WCSA_ 258
set WCSB_ 259
set WCSC_ 260
set WCSD_ 261
set WCSE_ 262
set WCSF_ 263
set WCSG_ 264
set WCSH_ 265
set WCSI_ 266
set WCSJ_ 267
set WCSK_ 268
set WCSL_ 269
set WCSM_ 270
set WCSN_ 271
set WCSO_ 272
set WCSP_ 273
set WCSQ_ 274
set WCSR_ 275
set WCSS_ 276
set WCST_ 277
set WCSU_ 278
set WCSV_ 279
set WCSW_ 280
set WCSX_ 281
set WCSY_ 282
set WCSZ_ 283
set STRING_ 284
set MASK_ 285
set NEW_ 286

    while {1} {
        if {[string length $yy_current_buffer] - $index_ < 1024} {
            if {$done_ == 0} {
	        set buffer_size 0
                set new_buffer ""
                YY_INPUT new_buffer buffer_size 1024
                append yy_current_buffer $new_buffer
                if {$buffer_size == 0 && \
                        [string length $yy_current_buffer] - $index_ == 0} {
                    set done_ 1
                }
            }
            if $done_ {
                if {[string length $yy_current_buffer] - $index_ == 0} {
                    break
                }
            }            
        }
        set yyleng 0
        set matched_rule -1
        # rule 0: mask
        if {[regexp -start $index_ -indices -line -nocase -- {\A(mask)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 0
        }
        # rule 1: new
        if {[regexp -start $index_ -indices -line -nocase -- {\A(new)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 1
        }
        # rule 2: wcs
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcs)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 2
        }
        # rule 3: wcsa
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsa)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 3
        }
        # rule 4: wcsb
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsb)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 4
        }
        # rule 5: wcsc
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsc)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 5
        }
        # rule 6: wcsd
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsd)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 6
        }
        # rule 7: wcse
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcse)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 7
        }
        # rule 8: wcsf
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsf)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 8
        }
        # rule 9: wcsg
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsg)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 9
        }
        # rule 10: wcsh
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsh)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 10
        }
        # rule 11: wcsi
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsi)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 11
        }
        # rule 12: wcsj
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsj)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 12
        }
        # rule 13: wcsk
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsk)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 13
        }
        # rule 14: wcsl
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsl)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 14
        }
        # rule 15: wcsm
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsm)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 15
        }
        # rule 16: wcsn
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsn)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 16
        }
        # rule 17: wcso
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcso)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 17
        }
        # rule 18: wcsp
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsp)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 18
        }
        # rule 19: wcsq
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsq)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 19
        }
        # rule 20: wcsr
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsr)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 20
        }
        # rule 21: wcss
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcss)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 21
        }
        # rule 22: wcst
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcst)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 22
        }
        # rule 23: wcsu
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsu)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 23
        }
        # rule 24: wcsv
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsv)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 24
        }
        # rule 25: wcsw
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsw)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 25
        }
        # rule 26: wcsx
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsx)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 26
        }
        # rule 27: wcsy
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsy)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 27
        }
        # rule 28: wcsz
        if {[regexp -start $index_ -indices -line -nocase -- {\A(wcsz)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 28
        }
        # rule 29: \"[^\"]*\"
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\"[^\"]*\")} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 29
        }
        # rule 30: \'[^\']*\'
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\'[^\']*\')} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 30
        }
        # rule 31: \{[^\}]*\}
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\{[^\}]*\})} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 31
        }
        # rule 32: \S+\S+
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\S+\S+)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 32
        }
        # rule 33: \s
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\s)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 33
        }
        # rule 34: .
        if {[regexp -start $index_ -indices -line -nocase -- {\A(.)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 34
        }
        if {$matched_rule == -1} {
            set yytext [string index $yy_current_buffer $index_]
            set yyleng 1
        }
        incr index_ $yyleng
        # workaround for Tcl's circumflex behavior
        if {[string index $yytext end] == "\n"} {
            set yy_current_buffer [string range $yy_current_buffer $index_ end]
            set index_ 0
        }
        set numlines [expr {[llength [split $yytext "\n"]] - 1}]
        switch -- $matched_rule {
            0 {
return $MASK_
            }
            1 {
return $NEW_
            }
            2 {
return $WCS_
            }
            3 {
return $WCSA_
            }
            4 {
return $WCSB_
            }
            5 {
return $WCSC_
            }
            6 {
return $WCSD_
            }
            7 {
return $WCSE_
            }
            8 {
return $WCSF_
            }
            9 {
return $WCSG_
            }
            10 {
return $WCSH_
            }
            11 {
return $WCSI_
            }
            12 {
return $WCSJ_
            }
            13 {
return $WCSK_
            }
            14 {
return $WCSL_
            }
            15 {
return $WCSM_
            }
            16 {
return $WCSN_
            }
            17 {
return $WCSO_
            }
            18 {
return $WCSP_
            }
            19 {
return $WCSQ_
            }
            20 {
return $WCSR_
            }
            21 {
return $WCSS_
            }
            22 {
return $WCST_
            }
            23 {
return $WCSU_
            }
            24 {
return $WCSV_
            }
            25 {
return $WCSW_
            }
            26 {
return $WCSX_
            }
            27 {
return $WCSY_
            }
            28 {
return $WCSZ_
            }
            29 {
set yylval [string range $yytext 1 end-1]; return $STRING_
            }
            30 {
set yylval [string range $yytext 1 end-1]; return $STRING_
            }
            31 {
set yylval [string range $yytext 1 end-1]; return $STRING_
            }
            32 {
set yylval $yytext; return $STRING_
            }
            33 {
# ignore whitespace
            }
            34 {
set yylval $yytext; return $yylval
            }
            default
                { puts stderr "unmatched token: $yytext"; exit -1 }
        }
        incr yylineno $numlines
    }
    return 0
}
######
# end autogenerated fickle functions
######

