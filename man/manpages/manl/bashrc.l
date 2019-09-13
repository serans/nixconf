.TH "BASHRC" "0" "July 2018" "" ""
.SH DESCRIPTION
.PP
I divide my bashrc config in several files:
.IP \[bu] 2
\&.bashrc.common : common across all my computers
.IP \[bu] 2
\&.bashrc.cern : specific stuff for cern machines
.IP \[bu] 2
I might create more ie: .bashrc.mac, etc.
.PP
I then include the required .bashrc.xxx file(s) from each of my
computer\[aq]s .bashrc files.
.SH LOCAL MAN PAGES
.PP
Used to document how I use the command line (and more)
.PP
\f[B]maned [NAME]\f[] : Creates or edits the man page with the given
[NAME].
Useful to write down examples of how you normally use the commands or as
a documentation tool in general.
Manpages will be saved in the \[aq]l\[aq] (local) section of the
manpages.
.PP
\f[B]manls\f[] : Lists all custom man pages written.
.SH CERN TOOLS
.PP
\f[B]sshagent_xxxx\f[] : These functions check if there\[aq]s already a
ssh agent in the current computer so that we don\[aq]t have to re\-type
the ssh key password every time we log in.
It\[aq]s called automatically so we shouldn\[aq]t care much.
.PP
\f[B]fec_acc [FECNAME]\f[] : Returns the accelerator of a given FEC
.PP
\f[B]cdfec [FECNAME]\f[] : Goes to the configuration directory of a fEC
.PP
\f[B]cdfechd [FECNAME]\f[] : Goes to the NFS directory where the FEC
data is mounted
.PP
\f[B]conda[on/off]\f[] : Starts/Stops the custom python environment
.SH AUTHORS
Serans.
