%TMUX

# Copy mode:

   - Enter copy mode: <Prefix> [
   - Paste: <C-]>

# Examples

- **Dettach clients**:

    tmux list-client

    tmux detach-client -s 0

    or tmux attach -d (forces detach of all other clients)

# Cheatsheet


## Managing sessions

Switch between sessions:

    C-b (          previous session
    C-b )          next session
    C-b s          choose a session from a list

Other:

    C-b $          rename the current session

## Managing windows

Switch between windows with a twist:

    C-b M-n        next window with a bell, activity or content alert
    C-b M-p        previous such window

Other:

    C-b ,          rename the current window
    C-b &          kill the current window

## Managing split panes

Creating a new pane by splitting an existing one:

    C-b "          split vertically (top/bottom)
    C-b %          split horizontally (left/right)

Switching between panes:

    C-b left       go to the next pane on the left
    C-b right      (or one of these other directions)
    C-b up
    C-b down
    C-b o          go to the next pane (cycle through all of them)
    C-b ;          go to the ‘last’ (previously used) pane

Moving panes around:

    C-b {          move the current pane to the previous position
    C-b }          move the current pane to the next position
    C-b C-o        rotate window ‘up’ (i.e. move all panes)
    C-b M-o        rotate window ‘down’
    C-b !          move the current pane into a new separate
                   window (‘break pane’)
Resizing panes:

    C-b M-up, C-b M-down, C-b M-left, C-b M-right
                   resize by 5 rows/columns
    C-b C-up, C-b C-down, C-b C-left, C-b C-right
                   resize by 1 row/column

Applying predefined layouts:

    C-b M-1        switch to even-horizontal layout
    C-b M-2        switch to even-vertical layout
    C-b M-3        switch to main-horizontal layout
    C-b M-4        switch to main-vertical layout
    C-b M-5        switch to tiled layout
    C-b space      switch to the next layout

Other:

    C-b x          kill the current pane
    C-b q          display pane numbers for a short while

