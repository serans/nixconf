.TH "TRICKS" "0" "" "" ""
.SH COMMAND LINE STUFF
.IP \[bu] 2
\f[B]paste\f[] : merge lines of text
.PP
Example: \f[C]ls\ /\ |\ paste\ \-\ \-\ \-\f[] outputs ls into 3 columns
.SH HARDWARE
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
.SH DEVELOPEMENT
.IP \[bu] 2
tmux: Fails to launch X11 apps after some time
.RS 2
.PP
ssh into computer with tmux to get a new MIT\-MAGIC\-COOKIE\-1
.PP
from there \f[C]echo\ $DISPLAY\f[]
.PP
from tmux \f[C]export\ DISPLAY=<display_from_prev_step>\f[]
.RE
.SH CERN HOW\-TOs
.IP \[bu] 2
Mount NFS
.RS 2
.PP
sshfs \-o allow_other \-o follow_symlinks
mhermose\@cs\-ccr\-dev2:/user/mhermose/ /user/mhermose/ sudo fusermount
\-u /user/mhermose # (unmounts)
.RE
.IP \[bu] 2
Disable logging level of AFS (to prevent dmesg clutter)
.RS 2
.PP
fs messages \-show console #or \-show none
.RE
.IP \[bu] 2
Search duplicate dim definitions
.RS 2
.PP
for file in *; do tail \-n +6 $file | head \-n \-3 | md5sum | sort |
uniq \-c ; done
.RE
.SH MISC
.PP
Convert pdf to text with more reasonable line breaks
.PP
pdftotext file_goc_782011.pdf \- | tr \[aq]\[aq] \[aq]~\[aq] | sed \-r
\[aq]s/([a\-zA\-Z])~([a\-zA\-Z])/ /gp\[aq] | tr \[aq]~\[aq] \[aq]\[aq]
.SH AUTHORS
Serans.
