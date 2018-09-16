% NIXENV - personal UNIX environment

# NAME

NIXENV stores my configuration for \*NIX systems.

# DESCRIPTION

In order to have my setup synchronized around all my computers, I put all my configuration and documentation in this folder. The folder is then synchronised to all my computers through cernbox or rsync.

# STRUCTURE

**bin/cgi**
: Cross-platform scripts

**bin/Linux/x86_64/**
: Linux-specific binaries that I like to keep with me

**dotfiles/**
: Configuration files for tmux, bash, vim, etc.

**man/**
: Local manpages (section 'l') 
You can list them via _manls_ and edit/create them with _maned PAGENAME_

**README.md**
: This file. Modify using `maned nixenv` to ensure that the corresponding manpage is updated

# To-do

I use man to create quick notes but I wonder if there's an easy-cross platform way to:
- have different sections (like cern, me, etc...)
- list every man page in a given section
