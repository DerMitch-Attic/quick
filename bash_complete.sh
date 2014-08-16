#!/bin/bash

# Link this file to /etc/bash_completion.d/quick or
# source it inside your .bashrc

_quick_plugins() {
    local cur

    COMPREPLY=()
    cur=${COMP_WORDS[COMP_CWORD]}
    if [ "$cur" = "" ]; then
    	COMPREPLY=($(quick plugins) )
    else
    	COMPREPLY=($(quick plugins | grep $cur) )
    fi
}

complete -F _quick_plugins quick
