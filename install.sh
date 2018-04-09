#!/bin/bash

###########
# GLOBALS #
###########

C_R='\033[0;31m'
C_G='\033[0;32m'
C_H1='\033[1;37m'
C_N='\033[0m'

nixenv_src=$(pwd)


###############
# FUNCTIONS   #
###############

function _h1_ {
    printf "\n${C_H1}$@ ${C_N}\n"
}

function cmd_exists {
    cmd=$1

    if ! type $cmd &>/dev/null; then
        printf "%-20s ${C_R}[ NOT FOUND ]${C_N}\n" "$cmd"
        return 0
    else
        printf "%-20s ${C_G}[ OK ]${C_N}\n" "$cmd"
        return 1
    fi
}


########
# MAIN #
########

_h1_ "Checking Requirements"

cmd_exists pandoc && exit 1
cmd_exists wget && exit 1
cmd_exists tmux && exit 1

_h1_ "Creating directory structure"

mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/src
mkdir -p $HOME/.local/python_envs

_h1_ "Installing dotfiles"

for dotfile in $(find $nixenv_src/dotfiles -type f); do
    filename=$(basename $dotfile)

    echo Updating $filename
    source=$nixenv_src/dotfiles/$filename
    dest=$HOME/$filename

    # back up only if it's a file (if it's a link we'll just overwrite it)
    test -f $dest && {
        echo "backing up $dest in .local/old/$filename"
        mkdir -p $HOME/.local/old
        mv $dest $HOME/.local/old/$filename
    }

    ln -sf $source $dest

done

echo "Fixing tmux version..."

if [ "$(tmux -V)" = "tmux 1.8" ]; then
   unlink $HOME/.tmux.conf
   unlink $HOME/.tmux.conf.local
   mv $HOME/.tmux1.8.conf $HOME/.tmux.conf
else
   unlink $HOME/.tmux1.8.conf
fi

source $HOME/.bashrc

##########
# PYTHON #
##########

_h1_ "Installing python..."

cmd_exists pip && {
    wget https://bootstrap.pypa.io/get-pip.py -O $HOME/.local/src/get-pip.py
    python $HOME/.local/src/get-pip.py --user
}

cmd_exists virtualenv && {
    pip install --user virtualenv
}

echo "Setting up std virtualenv in $HOME/.local/python_envs/std"
test -d $HOME/.local/python_envs/std || {
    virtualenv $HOME/.local/python_envs/std
}

source $HOME/.local/python_envs/std/bin/activate

cmd_exists csvlook && {
    pip install csvkit
}

###########
# Scripts #
###########

_h1_ "Installing Scripts"

for cmd in $(find $nixenv_src/bin -type f); do
    filename=$(basename $cmd)
    cmd_exists $filename && {
	echo "Installing $filename..."
        ln -s $nixenv_src/bin/$filename $HOME/.local/bin/$filename
    }
done

############
# Other SW #
############

_h1_ "Installing Tools"

cmd_exists jq && {
    case $(uname) in
        "Linux")
           URL=https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
           ;;
        "Darwin")
           URL=https://github.com/stedolan/jq/releases/download/jq-1.5/jq-osx-amd64
           ;;
        "*")
           echo "Unknown OS"
           exit 1
           ;;
    esac

    wget $URL -O $HOME/.local/bin/jq
    chmod +x $HOME/.local/bin/jq
}

