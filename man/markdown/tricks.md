% TRICKS(0)
% Serans

# COMMAND LINE STUFF

- **paste** : merge lines of text

Example: `ls / | paste - - - ` outputs ls into 3 columns

# HARDWARE

- **easypen  M406** : cursor moves but no 'click'

    xinput set-button-map "Genius EasyPenM406" 0 0 0 0 0 0 0 1 3 2 0

- **Lenovo touchpad** : not working

    sudo modprobe -r psmouse
    sudo modprobe psmouse
    sudo systemctl suspend

- **ubuntu Videos** not resizing and remain on top

    https://github.com/linuxenko/ubuntu-skylake-i915-video-fix


# DEVELOPEMENT



* tmux: Fails to launch X11 apps after some time

    ssh into computer with tmux to get a new MIT-MAGIC-COOKIE-1
    
    from there `echo $DISPLAY`
    
    from tmux `export DISPLAY=<display_from_prev_step>`

# CERN HOW-TOs

* Mount NFS

    sshfs -o allow_other -o follow_symlinks mhermose@cs-ccr-dev2:/user/mhermose/ /user/mhermose/
    sudo fusermount -u /user/mhermose # (unmounts)

* Disable logging level of AFS (to prevent dmesg clutter)

    fs messages -show console #or -show none

* Search duplicate dim definitions

    for file in *; do tail -n +6 $file | head -n -3 | md5sum | sort | uniq -c  ; done

# MISC

  Convert pdf to text with more reasonable line breaks
  
  pdftotext file_goc_782011.pdf - |  tr '\n' '~' | sed -r 's/([a-zA-Z])\~([a-zA-Z])/\1 \2/gp' | tr '~' '\n'
   	    
