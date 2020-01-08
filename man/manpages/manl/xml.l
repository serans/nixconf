.TH "" "" "" "" ""
.PP
Manipulating XML
.IP \[bu] 2
Show only one device
.IP
.nf
\f[C]
for\ f\ in\ *instance;\ do
\ \ \ \ sed\ \-n\ \[aq]/LOST/,/<\\/device\-instance>/p\[aq]\ $f\ >\ filter/$f;\ 
done
\f[]
.fi
.IP \[bu] 2
Side by side diff
.RS 2
.PP
diff \-\-suppress\-common\-lines \-y A B
.RE
