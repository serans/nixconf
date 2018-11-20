.TH "" "" "" "" ""
.SH Strace tricks
.SS Example
.IP \[bu] 2
strace \-f \-e trace=execve \-\- wreboot \-N LTIM_DU_M
.PP
Shows all processes started by wreboot, useful to see which executable
it\[aq]s being actually executed
.SS Options I use:
.PP
\f[B]\-p\f[] [pid]
.IP
.nf
\f[C]
attach\ to\ given\ process
\f[]
.fi
.PP
\f[B]\-f\f[]
.IP
.nf
\f[C]
trace\ child\ processes
\f[]
.fi
.PP
\f[B]\-e trace=[set of operations]\f[]
.IP
.nf
\f[C]
*\ trace\ only\ given\ (set\ of)\ operations\ (eg:\ open,\ close,\ read,\ write,\ execve)
*\ also\ works\ with\ filenames\ (only\ calls\ affecting\ that\ file)
*\ also\ works\ with\ "network"\ :\ shows\ only\ network\-related\ stuff
\f[]
.fi
