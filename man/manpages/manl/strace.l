.TH "" "" "" "" ""
.SH Strace tricks
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
trace\ child\ processes\ 
\f[]
.fi
.PP
\f[B]\-e trace=\f[]set
.IP
.nf
\f[C]
*\ trace\ only\ given\ (set\ of)\ operations\ (eg:\ open,\ close,\ read,\ write)
*\ also\ works\ with\ filenames\ (only\ calls\ affecting\ that\ file)
*\ also\ works\ with\ "network"\ :\ shows\ only\ network\-related\ stuff
\f[]
.fi
