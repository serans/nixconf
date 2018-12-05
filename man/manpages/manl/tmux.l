.TH "TMUX" "" "" "" ""
.SH Copy mode:
.IP \[bu] 2
Enter copy mode: [
.IP \[bu] 2
Paste:
.SH Examples
.IP \[bu] 2
\f[B]Dettach clients\f[]:
.RS 2
.PP
tmux list\-client
.PP
tmux detach\-client \-s 0
.PP
or tmux attach \-d (forces detach of all other clients)
.RE
.SH Cheatsheet
.SS Managing sessions
.PP
Switch between sessions:
.IP
.nf
\f[C]
C\-b\ (\ \ \ \ \ \ \ \ \ \ previous\ session
C\-b\ )\ \ \ \ \ \ \ \ \ \ next\ session
C\-b\ L\ \ \ \ \ \ \ \ \ \ ‘last'\ (previously\ used)\ session
C\-b\ s\ \ \ \ \ \ \ \ \ \ choose\ a\ session\ from\ a\ list
\f[]
.fi
.PP
Other:
.IP
.nf
\f[C]
C\-b\ $\ \ \ \ \ \ \ \ \ \ rename\ the\ current\ session
C\-b
\f[]
.fi
.SS Managing windows
.PP
Create a window:
.IP
.nf
\f[C]
C\-b\ c\ \ \ \ \ \ \ \ \ \ create\ a\ new\ window
\f[]
.fi
.PP
Switch between windows:
.IP
.nf
\f[C]
C\-b\ 1\ ...\ \ \ \ \ \ switch\ to\ window\ 1,\ ...,\ 9,\ 0
C\-b\ 9
C\-b\ 0
C\-b\ p\ \ \ \ \ \ \ \ \ \ previous\ window
C\-b\ n\ \ \ \ \ \ \ \ \ \ next\ window
C\-b\ l\ \ \ \ \ \ \ \ \ \ ‘last'\ (previously\ used)\ window
C\-b\ w\ \ \ \ \ \ \ \ \ \ choose\ window\ from\ a\ list
\f[]
.fi
.PP
Switch between windows with a twist:
.IP
.nf
\f[C]
C\-b\ M\-n\ \ \ \ \ \ \ \ next\ window\ with\ a\ bell,\ activity\ or
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ content\ alert
C\-b\ M\-p\ \ \ \ \ \ \ \ previous\ such\ window
\f[]
.fi
.PP
Other:
.IP
.nf
\f[C]
C\-b\ ,\ \ \ \ \ \ \ \ \ \ rename\ the\ current\ window
C\-b\ &\ \ \ \ \ \ \ \ \ \ kill\ the\ current\ window
\f[]
.fi
.SS Managing split panes
.PP
Creating a new pane by splitting an existing one:
.IP
.nf
\f[C]
C\-b\ "\ \ \ \ \ \ \ \ \ \ split\ vertically\ (top/bottom)
C\-b\ %\ \ \ \ \ \ \ \ \ \ split\ horizontally\ (left/right)
\f[]
.fi
.PP
Switching between panes:
.IP
.nf
\f[C]
C\-b\ left\ \ \ \ \ \ \ go\ to\ the\ next\ pane\ on\ the\ left
C\-b\ right\ \ \ \ \ \ (or\ one\ of\ these\ other\ directions)
C\-b\ up
C\-b\ down
C\-b\ o\ \ \ \ \ \ \ \ \ \ go\ to\ the\ next\ pane\ (cycle\ through\ all\ of\ them)
C\-b\ ;\ \ \ \ \ \ \ \ \ \ go\ to\ the\ ‘last'\ (previously\ used)\ pane
\f[]
.fi
.PP
Moving panes around:
.IP
.nf
\f[C]
C\-b\ {\ \ \ \ \ \ \ \ \ \ move\ the\ current\ pane\ to\ the\ previous\ position
C\-b\ }\ \ \ \ \ \ \ \ \ \ move\ the\ current\ pane\ to\ the\ next\ position
C\-b\ C\-o\ \ \ \ \ \ \ \ rotate\ window\ ‘up'\ (i.e.\ move\ all\ panes)
C\-b\ M\-o\ \ \ \ \ \ \ \ rotate\ window\ ‘down'
C\-b\ !\ \ \ \ \ \ \ \ \ \ move\ the\ current\ pane\ into\ a\ new\ separate
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ window\ (‘break\ pane')
C\-b\ :move\-pane\ \-t\ :3.2
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ split\ window\ 3\[aq]s\ pane\ 2\ and\ move\ the\ current\ pane\ there
\f[]
.fi
.PP
Resizing panes:
.IP
.nf
\f[C]
C\-b\ M\-up,\ C\-b\ M\-down,\ C\-b\ M\-left,\ C\-b\ M\-right
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ resize\ by\ 5\ rows/columns
C\-b\ C\-up,\ C\-b\ C\-down,\ C\-b\ C\-left,\ C\-b\ C\-right
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ resize\ by\ 1\ row/column
\f[]
.fi
.PP
Applying predefined layouts:
.IP
.nf
\f[C]
C\-b\ M\-1\ \ \ \ \ \ \ \ switch\ to\ even\-horizontal\ layout
C\-b\ M\-2\ \ \ \ \ \ \ \ switch\ to\ even\-vertical\ layout
C\-b\ M\-3\ \ \ \ \ \ \ \ switch\ to\ main\-horizontal\ layout
C\-b\ M\-4\ \ \ \ \ \ \ \ switch\ to\ main\-vertical\ layout
C\-b\ M\-5\ \ \ \ \ \ \ \ switch\ to\ tiled\ layout
C\-b\ space\ \ \ \ \ \ switch\ to\ the\ next\ layout
\f[]
.fi
.PP
Other:
.IP
.nf
\f[C]
C\-b\ x\ \ \ \ \ \ \ \ \ \ kill\ the\ current\ pane
C\-b\ q\ \ \ \ \ \ \ \ \ \ display\ pane\ numbers\ for\ a\ short\ while
\f[]
.fi
.SS Other config file settings
.PP
Force a reload of the config file on C\-b r:
.IP
.nf
\f[C]
unbind\ r
bind\ r\ source\-file\ ~/.tmux.conf
\f[]
.fi
.PP
Some other settings that I use:
.IP
.nf
\f[C]
setw\ \-g\ xterm\-keys\ on
\f[]
.fi
