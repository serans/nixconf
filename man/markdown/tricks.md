% TRICKS(l)
% Miguel Hermo Serans

# COMMAND LINE

- **complete**: complete -W 'list of words' mycommand : adds autocomplete capabilities!

- **fc** : edit last command using $EDITOR

- **ssh hop** : ssh -J lxplus.cern.ch cs-ccr-dev1

- **paste** : merge lines of text

Example: `ls / | paste - - - ` outputs ls into 3 columns


- **Mount NFS**

    sshfs -o allow_other -o follow_symlinks mhermose@cs-ccr-dev2:/user/mhermose/ /user/mhermose/
    sudo fusermount -u /user/mhermose # (unmounts)

    Disable logging level of AFS (to prevent dmesg clutter)

      fs messages -show console #or -show none

# CERN-SPECIFIC

Compare acquisition of 2 LTIMS

```bash
function read_ltims()
{
   L1=$1
   L2=$2
   CY=$3
   
   rda-get -r location -p Acquisition -c $CY -d $L1 > /tmp/acq${L1}.txt &
   PID1=$!
   rda-get -r location -p Acquisition -c $CY -d $L2 > /tmp/acq${L2}.txt &
   PID2=$!
   
   wait $PID1 $PID2
  
   echo "done"
}
```

# TROUBLESHOTING

## NS_ERROR in firefox

    localStorage.clear()
    sessionStorage.clear()

## Common hardware problems

- **easypen  M406** : cursor moves but no 'click'

    xinput set-button-map "Genius EasyPenM406" 0 0 0 0 0 0 0 1 3 2 0

- **Lenovo touchpad** : not working

    sudo modprobe -r psmouse
    sudo modprobe psmouse
    sudo systemctl suspend

- **ubuntu Videos** not resizing and remain on top

    https://github.com/linuxenko/ubuntu-skylake-i915-video-fix


## Common software problems

- **tmux X11** : Fails to launch X11 apps after some time

    ssh into computer with tmux to get a new MIT-MAGIC-COOKIE-1
    
    from there `echo $DISPLAY`
    
    from tmux `export DISPLAY=<display_from_prev_step>`

# MISC

  Convert pdf to text with more reasonable line breaks

``` 
  pdftotext file_goc_782011.pdf - |  tr '\n' '~' | sed -r 's/([a-zA-Z])\~([a-zA-Z])/\1 \2/gp' | tr '~' '\n'
```
