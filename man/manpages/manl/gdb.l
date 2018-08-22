.TH "GDB" "" "" "" ""
.SH EXAMPLES
.IP \[bu] 2
Set layout: \f[C]layout\f[]
.IP \[bu] 2
send output to different console \f[C]tty\ /dev/pts/1\f[]
.IP \[bu] 2
Refresh screen: \f[C]Ctrl+L\f[]
.IP \[bu] 2
[a,r]watch : Break when value is read (rwatch), written (watch) or
either (awatch)
.IP \[bu] 2
Running commands on breikpoint
.IP
.nf
\f[C]
break\ foo\ if\ x>0
commands
silent
printf\ "x\ is\ %d\\n",x
cont
end
\f[]
.fi
