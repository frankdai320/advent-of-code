set input [open "day1-input" r]
set data [read $input]
#poor man's set
set seensofar [dict create]
set current 0

while true {
    foreach difference $data {
        set current [expr $current $difference]
        if {[dict exists $seensofar $current]} {
            puts $current
            exit
        }
        dict set seensofar $current "seen"
    }
}

