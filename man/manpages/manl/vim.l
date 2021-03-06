.\" Automatically generated by Pandoc 2.2.3.2
.\"
.TH "VIM" "" "" "" ""
.hy
.SH VIM Tricks
.SS Selection
.IP \[bu] 2
\f[B]gv\f[] : Repeat selection
.IP \[bu] 2
\f[B]f[a]\f[] / \f[B]F[a]\f[] : Go to next/prev character [a] in line:
.IP \[bu] 2
\f[B]"[n]\f[] paste history numnber n.
View all with \f[I]:reg\f[]
.IP \[bu] 2
**C\-R \[lq]** paste in command mode (can use register number instead
of\[rq])
.SS Navigation
.IP \[bu] 2
\f[B]C\-o\f[] go back
.IP \[bu] 2
\f[B]C\-i\f[] go forward
.IP \[bu] 2
\f[B];\f[] / \f[B],\f[] : Repeat last operation forward/backwards
.SS Diff
.IP \[bu] 2
\f[B]zR\f[] expand all folds
.IP \[bu] 2
\f[B]za\f[] contract folds
.SS Editing
.PP
C\-n: Launches multi\-cursor plugin
.SS Spellcheck
.IP \[bu] 2
\f[B]:setlocal spell spellang=en_UK\f[] turns spell checking on
.IP \[bu] 2
\f[B]]s\f[]/\f[B]]s\f[] prev/next misspelling
.IP \[bu] 2
\f[B]zg\f[] add word to spellfile
.IP \[bu] 2
\f[B]z=\f[] show suggestions
.IP \[bu] 2
\f[B] s\f[] show suggestions in insert mode
.SS Tags
.PP
More info using \f[I]:help tagstack\f[]
.IP \[bu] 2
\f[B]C\-]\f[] search tag
.IP \[bu] 2
\f[B]C\-t\f[] jump back from tag
.SS Recording
.IP \[bu] 2
\f[B]q[e]\f[] : starts recording on register \[lq]e\[rq]
.IP \[bu] 2
then do whatever commands you want
.IP \[bu] 2
\f[B]q\f[] stops recording
.SS Vimdiff
.IP \[bu] 2
]c \- next difference
.IP \[bu] 2
[c \- previous difference
.IP \[bu] 2
:diffupdate \- rescan the files for differences
