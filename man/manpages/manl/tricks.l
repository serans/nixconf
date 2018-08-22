.TH "TRICKS(l)" "" "" "" ""
.SH COMMAND LINE
.IP \[bu] 2
\f[B]ssh hop\f[] : ssh \-J lxplus.cern.ch cs\-ccr\-dev1
.IP \[bu] 2
\f[B]paste\f[] : merge lines of text
.PP
Example: \f[C]ls\ /\ |\ paste\ \-\ \-\ \-\f[] outputs ls into 3 columns
.IP \[bu] 2
\f[B]Mount NFS\f[]
.RS 2
.PP
sshfs \-o allow_other \-o follow_symlinks
mhermose\@cs\-ccr\-dev2:/user/mhermose/ /user/mhermose/ sudo fusermount
\-u /user/mhermose # (unmounts)
.PP
Disable logging level of AFS (to prevent dmesg clutter)
.PP
fs messages \-show console #or \-show none
.RE
.SH CERN\-SPECIFIC
.PP
Compare acquisition of 2 LTIMS
.IP
.nf
\f[C]
function\ read_ltims()
{
\ \ \ L1=$1
\ \ \ L2=$2
\ \ \ CY=$3
\ \ \ 
\ \ \ rda\-get\ \-r\ location\ \-p\ Acquisition\ \-c\ $CY\ \-d\ $L1\ >\ /tmp/acq${L1}.txt\ &
\ \ \ PID1=$!
\ \ \ rda\-get\ \-r\ location\ \-p\ Acquisition\ \-c\ $CY\ \-d\ $L2\ >\ /tmp/acq${L2}.txt\ &
\ \ \ PID2=$!
\ \ \ 
\ \ \ wait\ $PID1\ $PID2
\ \ 
\ \ \ echo\ "done"
}
\f[]
.fi
.SH TROUBLESHOTING
.PP
Common hardware problems
.IP \[bu] 2
\f[B]easypen M406\f[] : cursor moves but no \[aq]click\[aq]
.RS 2
.PP
xinput set\-button\-map "Genius EasyPenM406" 0 0 0 0 0 0 0 1 3 2 0
.RE
.IP \[bu] 2
\f[B]Lenovo touchpad\f[] : not working
.RS 2
.PP
sudo modprobe \-r psmouse sudo modprobe psmouse sudo systemctl suspend
.RE
.IP \[bu] 2
\f[B]ubuntu Videos\f[] not resizing and remain on top
.RS 2
.PP
https://github.com/linuxenko/ubuntu\-skylake\-i915\-video\-fix
.RE
.PP
Common software problems
.IP \[bu] 2
\f[B]tmux X11\f[] : Fails to launch X11 apps after some time
.RS 2
.PP
ssh into computer with tmux to get a new MIT\-MAGIC\-COOKIE\-1
.PP
from there \f[C]echo\ $DISPLAY\f[]
.PP
from tmux \f[C]export\ DISPLAY=<display_from_prev_step>\f[]
.RE
.SH MISC
.PP
Convert pdf to text with more reasonable line breaks
.IP
.nf
\f[C]
\ \ pdftotext\ file_goc_782011.pdf\ \-\ |\ \ tr\ \[aq]\\n\[aq]\ \[aq]~\[aq]\ |\ sed\ \-r\ \[aq]s/([a\-zA\-Z])\\~([a\-zA\-Z])/\\1\ \\2/gp\[aq]\ |\ tr\ \[aq]~\[aq]\ \[aq]\\n\[aq]
\f[]
.fi
.SH AUTHORS
Miguel Hermo Serans.
