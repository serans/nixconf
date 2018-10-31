.TH "PKG\-CONFIG" "" "" "" ""
.SS General Info
.PP
Each package name is determined through filename of pkg\-config metadata
file
.PP
libfoo.so => libfoo.pc
.PP
Variables:
.IP \[bu] 2
Requires : defines required libraries, exposes link flags so it becomes
direct dependency.
.IP \[bu] 2
Requires.private : libraries with symbols not exposed to clients.
Still used for static linking.
.IP \[bu] 2
Cflags: compiler flags for using the library.
.SS Paths
.PP
Searches for libraries in PKG_CONFIG_PATH (make sure to define it using
\[aq]export\[aq] so that it becomes an env variable) and in directories
listed in:
.RS
.PP
pkg\-config \-\-variable pc_path pkg\-config
.RE
.SS Command Line
.IP
.nf
\f[C]
\-\-modversion
\-\-libs\ [\-\-static].\ Can\ specify\ versions:
\ \ \ \ \-\-libs\ "bar\ >=\ 2.3"
\-\-exists
\f[]
.fi
