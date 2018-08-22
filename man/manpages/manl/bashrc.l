.TH "BASHRC" "0" "July 2018" "" ""
.SH DESCRIPTION
.PP
I have two bashrc file: .bashrc.common and .bashrc.cern
.PP
I include them from each of my computers\[aq] ~/.bashrc file (one or
both, depending on wether it\[aq]s a CERN dev machine or not)
.SH FUNCTIONS (COMMON)
.PP
\f[B]maned [NAME]\f[] : Creates or edits the man page with the given
[NAME].
Useful to write down examples of how you normally use the commands or as
a documentation tool in general.
Manpages will be saved in the \[aq]l\[aq] (local) section of the
manpages.
.PP
\f[B]manls\f[] : Lists all custom man pages written.
.SH FUNCTIONS (CERN)
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
