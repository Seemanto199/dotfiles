#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1='[\u@\h \W]\$ '


#################### EXPORT ######################################
export EDITOR='nano'
export VISUAL='nvim'
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
################################################################

############################### ALIASES ########################
alias f="fastfetch"
alias fa="fastfetch -c all"
alias c="clear"
alias e="exit"
alias ff="fzf"
alias uefi="systemctl reboot --firmware-setup"
alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias smb-mount='sudo mount -t cifs -o port=4455,guest,uid=$(id -u),gid=$(id -g) //10.231.174.67/Public /mnt/smb'
alias smb-unmount='sudo umount /mnt/smb'
################################################################


#Fastfetch
if [[ $- == *i* ]]; then
    fastfetch
fi

# fzf integration
eval "$(fzf --bash)"

# Starship only in graphical terminals
if [[ -n "$DISPLAY" || -n "$WAYLAND_DISPLAY" ]]; then
    eval "$(starship init bash)"
fi
