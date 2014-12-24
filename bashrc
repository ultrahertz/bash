#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\W * \$ '
PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\W \[$(tput sgr0)\]\[$(tput setaf 2)\]\\$ \[$(tput sgr0)\]"
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# user config
. "$HOME/.bash/aliases"
. "$HOME/.bash/functions"

export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim
export SUDO_EDITOR=$EDITOR
export PAGER=/usr/bin/most

