#
# ~.profile
#
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

export DOOMWADDIR=$XDG_DATA_HOME/doom/wads
export HISTFILE="$XDG_STATE_HOME"/bash/history
export LESSHISTFILE=-
export STEAMGAMES=$XDG_DATA_HOME/Steam/steamapps/common
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"
export WINEPREFIX=$XDG_DATA_HOME/wine

export PATH=$PATH:$HOME/.local/bin

# [[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
	exec startx $XDG_CONFIG_HOME/X11/xinitrc
fi

xrdb -merge $XDG_CONFIG_HOME/X11/Xresources
