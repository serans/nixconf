# Strace tricks

## Options I use:

**-p** [pid]

    attach to given process

**-f**
    
    trace child processes 

**-e [set of operations]

    * trace only given (set of) operations (eg: open, close, read, write, execv)
    * also works with filenames (only calls affecting that file)
    * also works with "network" : shows only network-related stuff
