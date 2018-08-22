% GDB

# EXAMPLES

* Set layout: `layout`

* send output to different console `tty /dev/pts/1`

* Refresh screen: `Ctrl+L`

* [a,r]watch : Break when value is read (rwatch), written (watch) or either (awatch)

* Running commands on breikpoint

```
break foo if x>0
commands
silent
printf "x is %d\n",x
cont
end
```
