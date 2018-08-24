# Strace tricks

## Options I use:

**-p** [pid]

    attach to given process

**-f**
    
    trace child processes 

**-e trace=**set

    * trace only given (set of) operations (eg: open, close, read, write)
    * also works with filenames (only calls affecting that file)
    * also works with "network" : shows only network-related stuff
