# Strace tricks

## Example

* strace -f -e trace=execve -- wreboot -N LTIM_DU_M

  Shows all processes started by wreboot, useful to see which executable it's being actually executed

## Options I use:

**-p** [pid]

    attach to given process

**-f**
    
    trace child processes

**-e trace=[set of operations]**

    * trace only given (set of) operations (eg: open, close, read, write, execve)
    * also works with filenames (only calls affecting that file)
    * also works with "network" : shows only network-related stuff

