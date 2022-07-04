# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lhgG --color=auto --group-directories-first'
alias la='ls -A'
alias lc="la | wc -l"
alias free='free -h'
alias micloop='pactl load-module module-loopback latency_msec=1'
alias cutloop='pactl unload-module module-loopback'
alias coolfluid='fluidsynth -a pulseaudio -m alsa_seq -o midi.autoconnect=1'
alias dosbox='dosbox -conf $XDG_CONFIG_HOME/dosbox/dosbox-0.74-3.conf'
alias lobright='xrandr --output HDMI-A-0 --brightness 0.3'
alias mdbright='xrandr --output HDMI-A-0 --brightness 0.6'
alias hibright='xrandr --output HDMI-A-0 --brightness 1'
alias winesteam='wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/steam.exe'
alias wget="wget --hsts-file ~/Documents"

PS1='\e[1;32m\u@\h\e[0;38m:\e[1;34m\w\e[0;38m\$ \e[m'
