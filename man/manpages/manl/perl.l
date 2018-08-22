.TH "PERL NOTES" "" "" "" ""
.SH DEBUGGING
.IP \[bu] 2
perl \-d
.IP \[bu] 2
x [maxdepth] expr : does a var dump (possibly limited to [maxdepth])
.IP \[bu] 2
$DB::single = 1 : Putting this in the code adds a breakpoint
