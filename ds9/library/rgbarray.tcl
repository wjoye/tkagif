#  Copyright (C) 1999-2018
#  Smithsonian Astrophysical Observatory, Cambridge, MA, USA
#  For conditions of distribution and use, see copyright notice in "copyright"

package provide DS9 1.0

proc ImportRGBArrayFile {fn} {
    global loadParam
    global current

    switch -- [$current(frame) get type] {
	base -
	3d {return}
	rgb {}
    }

    set loadParam(file,type) array
    set loadParam(file,mode) {rgb cube}
    set loadParam(load,type) mmapincr

    # if no zdim is present, insert one
    set exp {.*\[.*zdim[ ]*=[ ]*[0-9]+}
    if {![regexp $exp $fn]} {
	set i [string last "\]" $fn]
        set fn "[string range $fn 0 [expr $i-1]],zdim=3\]"
    }
    set loadParam(file,name) $fn

    # mask not supported
    set loadParam(load,layer) {}

    # check for stdin/gz
    ConvertArrayFile
    ProcessLoad
}

proc ImportRGBArrayAlloc {path fn} {
    global loadParam
    global current

    switch -- [$current(frame) get type] {
	base -
	3d {return}
	rgb {}
    }

    set loadParam(file,type) array
    set loadParam(file,mode) {rgb cube}
    set loadParam(load,type) allocgz

    # if no zdim is present, insert one
    set exp {.*\[.*zdim[ ]*=[ ]*[0-9]+}
    if {![regexp $exp $fn]} {
	set i [string last "\]" $fn]
        set fn "[string range $fn 0 [expr $i-1]],zdim=3\]"
    }
    if {![regexp $exp $path]} {
	set i [string last "\]" $path]
        set path "[string range $path 0 [expr $i-1]],zdim=3\]"
    }
    set loadParam(file,name) $fn
    set loadParam(file,fn) $path

    # mask not supported
    set loadParam(load,layer) {}

    ProcessLoad
}

proc ImportRGBArraySocket {sock fn} {
    global loadParam
    global current

    switch -- [$current(frame) get type] {
	base -
	3d {return}
	rgb {}
    }

    set loadParam(file,type) array
    set loadParam(file,mode) {rgb cube}
    set loadParam(load,type) socketgz
    # if no zdim is present, insert one
    set exp {.*\[.*zdim[ ]*=[ ]*[0-9]+}
    if {![regexp $exp $fn]} {
	set i [string last "\]" $fn]
        set fn "[string range $fn 0 [expr $i-1]],zdim=3\]"
    }
    set loadParam(file,name) $fn
    set loadParam(socket,id) $sock

    # mask not supported
    set loadParam(load,layer) {}

    return [ProcessLoad 0]
}

proc ExportRGBArrayFile {fn opt} {
    global current

    if {$fn == {} || $current(frame) == {}} {
	return
    }

    if {![$current(frame) has fits]} {
	return
    }

    $current(frame) save array rgb cube file "\{$fn\}" $opt
}

proc ExportRGBArraySocket {sock opt} {
    global current

    if {$current(frame) == {}} {
	return
    }

    if {![$current(frame) has fits]} {
	return
    }

    $current(frame) save array rgb cube socket $sock $opt
}

proc ProcessRGBArrayCmd {varname iname sock fn} {
    upvar $varname var
    upvar $iname i

    global loadParam
    global current

    switch -- [string tolower [lindex $var $i]] {
	new {
	    incr i
	    CreateRGBFrame
	}
	mask {
	    incr i
	    # not supported
	}
	slice {
	    incr i
	    # not supported
	}
    }
    set param [lindex $var $i]

    if {$sock != {}} {
	# xpa
	if {![ImportRGBArraySocket $sock $param]} {
	    InitError xpa
	    ImportRGBArrayFile $param
	}
    } else {
	# comm
	if {$fn != {}} {
	    ImportRGBArrayAlloc $fn $param
	} else {
	    ImportRGBArrayFile $param
	}
    }
    FinishLoad
}

proc RGBArrayCmdLoad {param} {
    global array

    if {$array(load,sock) != {}} {
	# xpa
	if {![ImportRGBArraySocket $array(load,sock) $param]} {
	    InitError xpa
	    ImportRGBArrayFile $param
	}
    } else {
	# comm
	if {$array(load,fn) != {}} {
	    ImportRGBArrayAlloc $array(load,fn) $param
	} else {
	    ImportRGBArrayFile $param
	}
    }
    FinishLoad
}

proc ProcessSendRGBArrayCmd {proc id param sock fn} {
    global current

    if {$current(frame) == {}} {
	return
    }

    set opt [string tolower [lindex $param 0]]
    if {$sock != {}} {
	# xpa
	ExportRGBArraySocket $sock $opt
    } elseif {$fn != {}} {
	# comm
	ExportRGBArrayFile $fn $opt
	$proc $id {} $fn
    }
}


