% NIXENV - personal UNIX environment

# NAME

NIXENV stores my configuration for \*NIX systems.

# DESCRIPTION

In order to have my setup synchronized around all my computers, I put all my configuration and documentation in this folder. The folder is then synchronised to all my computers through cernbox or rsync.

# STRUCTURE

**/bin/**
: Cross-platform scripts

**/dotfiles/**
: Configuration files for tmux, bash, vim, etc.

**/man/**
: Local manpages (section 'l') 
You can list them via _manls_ and edit/create them with _maned PAGENAME_

**README.md**
: This file. Modify using `maned nixenv` to ensure that the corresponding manpage is updated
