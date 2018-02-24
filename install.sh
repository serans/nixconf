#!/bin/bash

###############
# FUNCTIONS   #
###############
C_R='\033[0;31m'
C_G='\033[0;32m'
C_H1='\033[1;37m'
C_N='\033[0m'

nixenv_src=$(pwd)

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

printf "\n${C_H1}Checking Requirements${C_N}\n"
cmd_exists wget && exit 1;
cmd_exists mktemp && exit 1;

printf "\n${C_H1}Creating directory structure${C_N}\n"

mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/src

printf "\n${C_H1}Installing dotfiles${C_N}\n"

for dotfile in $(find dotfiles -type f); do
    filename=$(basename $dotfile)

    echo "Updating $filename"
    source=$nixenv_src/dotfiles/$filename
    dest=$HOME/$filename

    test -f $dest && {
        echo "backing up $dest in .local/old/$filename"
        mkdir -p $HOME/.local/old
        mv $dest $HOME/.local/old/$filename
    }

    ln -s $source $dest

done


source $HOME/.bashrc

printf "\n${C_H1}Installing sowftare...${C_N}\n"

cmd_exists csvlook && {
    prevdir=$(pwd)
    wget https://github.com/wireservice/csvkit.git -O $HOME/.local/src/csvkit

    cd $HOME/.local/src/csvkit
    python setup.py build

    for script in build/lib/csvkit/utilities/*csv*py; do
        chmod +x $script
        ln -s $(pwd)/$script ../../bin/$(basename $script .py)
    done
}

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
}

