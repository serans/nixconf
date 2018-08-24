% BASHRC(0)
% Serans
% July 2018

# DESCRIPTION

I divide my bashrc config in several files: 

* .bashrc.common : common across all my computers
* .bashrc.cern : specific stuff for cern machines 
* I might create more ie: .bashrc.mac, etc.

I then include the required .bashrc.xxx file(s) from each of my computer's .bashrc files.

# LOCAL MAN PAGES

Used to document how I use the command line (and more)

**maned [NAME]**
: Creates or edits the man page with the given [NAME]. Useful to write down examples of how you normally use the commands or as a documentation tool in general. Manpages will be saved in the 'l' (local) section of the manpages.

**manls**
: Lists all custom man pages written.

# CERN TOOLS

**sshagent_xxxx**
: These functions check if there's already a ssh agent in the current computer so that we don't have to re-type the ssh key password every time we log in. It's called automatically so we shouldn't care much.

**fec_acc [FECNAME]**
: Returns the accelerator of a given FEC

**cdfec [FECNAME]**
: Goes to the configuration directory of a fEC

**cdfechd [FECNAME]**
: Goes to the NFS directory where the FEC data is mounted

**conda[on/off]**
: Starts/Stops the custom python environment

