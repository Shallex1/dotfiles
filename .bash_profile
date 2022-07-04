#
# ~/.bash_profile
#
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"

export DOOMWADDIR=~/.local/share/doom/wads
export HISTFILE=/tmp
export ISOPATH=~/media/iso
export LESSHISTFILE=-
export PULSE_COOKIE="$XDG_CONFIG_HOME/pulse"
export STEAMGAMES=~/.steam/steam/steamapps/common
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"
export WINEPREFIX=.local/share/wine
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
	exec startx $XDG_CONFIG_HOME/X11/xinitrc
fi

xrdb -merge $XDG_CONFIG_HOME/X11/Xresources
