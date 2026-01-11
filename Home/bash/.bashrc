#################### EXPORT ######################################
export EDITOR='nano'
export VISUAL='nano'
################################################################

############################### ALIASES ########################
alias f="fastfetch"
alias c="clear"
alias e="exit"
alias ff="fzf"
alias uefi="systemctl reboot --firmware-setup"
alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
################################################################


######Fastfetch########################################

#if [[ $- == *i* ]]; then
    #fastfetch
      
    #if [ -t 1 ]; then
     # stty -echo
      #IFS= read -rsn1 _
      #stty echo
      #clear
      #fi

#fi
######################################################

###STARSHIP###########################################
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi
######################################################


###########ignore upper and lowercase when TAB completion################
bind "set completion-ignore-case on"
#########################################################################
