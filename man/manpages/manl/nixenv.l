.TH "NIXENV(l) UNIX environment" "" "Aug 2018" "" ""
.SH NAME
.PP
NIXENV stores my configuration for *NIX systems.
.SH DESCRIPTION
.PP
In order to have my setup synchronized around all my computers, I put
all my configuration and documentation in this folder.
The folder is then synchronised to all my computers through cernbox or
rsync.
.SH STRUCTURE
.PP
\f[B]/bin/\f[] : Cross\-platform scripts
.PP
\f[B]/dotfiles/\f[] : Configuration files for tmux, bash, vim, etc.
.PP
\f[B]/man/\f[] : Local manpages (section \[aq]l\[aq]) You can list them
via \f[I]manls\f[] and edit/create them with \f[I]maned PAGENAME\f[]
.PP
\f[B]README.md\f[] : This file
.SH AUTHORS
Miguel Hermo Serans.
