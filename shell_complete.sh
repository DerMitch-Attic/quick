# No shebang, source this file

# Plugin name completition for shells
# Supported with bash and zsh

# Installation (choose one option):
# - Link this file to /etc/bash_completion.d/quick
# - Source it inside your .bashrc/.zshrc

if [[ -n ${ZSH_VERSION-} ]]; then
	autoload -U +X bashcompinit && bashcompinit
fi

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
