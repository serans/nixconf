% NIXENV(7me) UNIX environment
% Miguel Hermo Serans
% August 2018

# NAME

NIXENV stores my configuration for *NIX systems.

# DESCRIPTION

In order to have my setup synchronized around all my computers, I put

# DIRECTORIES

**/bin**
: Cross-platform scripts

**/dotfiles**
: Configuration files for tmux, bash, vim, etc.

**/man**
: Custom manpages (I use non-standard section 0). Consult with _um PAGENAME_ and edit with _vimed PAGENAME_

# EXAMPLES

pandoc -s -f markdown -t man markdown/nixenv.md | tbl | groff -T utf8 -man | less -Rommand Line Tricks

Name      Param1    Enabled
-----     -------   --------
PX.SGT    13        True
PX.DDT1   3.2       False
ZK.SIG    12        False

**-h**
:  Display help message

**-t**
:  Do some other thing
