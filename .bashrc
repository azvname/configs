# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

stty -ixon 
# -ixon — это опция, которая отключает программное управление потоком с использованием символов XON и XOFF.
HISTFILE=~/.my-bashrc
EDITOR=nvim


# feh --bg-fill "/home/user/Pictures/wallpapers/tmb_24099_1403.jpg"



# If not running interactively, don't do anything
#case $- in
#    *i*) ;;
#      *) return;;
#esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000 # in memory ram
HISTFILESIZE=100000 # count string in file

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls --color=auto'
#    #alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'
#
#    #alias grep='grep --color=auto'
#    #alias fgrep='fgrep --color=auto'
#    #alias egrep='egrep --color=auto'
#fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#export PATH="$PATH:/home/user/.local/bin"
#export PATH=$PATH:/usr/local/go/bin
#export GOTELEMETRY=off
#export PATH="$PATH:/opt/nvim-linux64/bin"
export LS_COLORS='di=01;34' 
export PATH="$PATH:/home/zakhar/.arduino15/bin"



# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
alias nv='nvim'
# alias fld='python3 ~/code/projects/ushfls/start.py'
alias fld='tmp_path=$(pwd) && cd ~/code/ushfils/ && npm run dev && cd $tmp_path' 
alias flp='cd ~/code/ushfils/ && npm start && cd -'

alias fp='feh --scale-down --auto-zoom -B default '

alias гыкг='setxkbmap "us,ru" ",winkeys" "grp:caps_toggle,grp_led:caps"'
alias ды=ls
alias зн=py
alias св=cd
alias тм=nv
alias ыезоз='pkill -9 ibus-daemon'
alias ыекоз='ibus-daemon -drx'
alias ..='cd ..'
alias a11='sudo ip a add 10.10.10.11/24 dev eth0'
alias acp='python -m venv env && source env/bin/activate'
alias apthis='cat /var/log/apt/history.log|less'
alias atsuko='cd /home/zakhar/code/Bots/tgbot3/ && py main_long_poll.py && cd'
#alias blue=$'cd ~/.config/i3/ && \nrm config &&\nln -s config_blue config &&\ni3-msg reload && \ni3-msg restart &&\ncd ~'
alias bpwn='cd "/home/zakhar/.wine/drive_c/Program Files (x86)/CA/ERwin Process Modeler r7.3/binaries" && wine AFPM70.exe && cd ~'
alias build_djpro='cd /home/zakhar/code/projects/downloader_on_django && docker compose build'
alias burp='~/program/BurpSuiteCommunity/BurpSuiteCommunity'
alias c='sudo chvt '
alias ccls='cd;cls'
alias cd..='cd ..'
alias clr_all='sudo docker kill $(docker ps -qa) && sudo docker rm $(docker ps -a -q)'
alias clrcns='sudo docker container prune'
alias clrimg='docker rmi $(docker images -f "dangling=true" -q)'
alias clripts='sudo iptables -F && sudo iptables -X && sudo iptables -L'
alias cls='clear;ls'
alias compact='VboxManage.exe modifyhd "D:\Oracle VM VirtualBox\Windows 10 x86 Ent 1607.vdi" --compact'
#alias connect_clickhouse=$'docker run -it \\\n--rm \\\n--link some-clickhouse-server:clickhouse-server yandex/clickhouse-client \\\n--host clickhouse-server'
#alias connect_mongo=mongosh
alias connect_redis='redis-cli -h 0.0.0.0 -p 6379'
#alias connect_samba='smbclient '\''//localhost/samba-share'\'
#alias create_clickhouse=$'docker run -d \\\n--name clickhouse_server \\\n--ulimit nofile=262144:262144 \\\n--volume=$HOME/some_clickhouse_database:/var/lib/clickhouse yandex/clickhouse-server'
#alias create_mimer=$'docker run -d \\\n--name mimer_server \\\n-p 1360:1360 mimersql/mimersql_v11.0:latest \\\n-e MIMER_DATABASE="mimerdb" \\\n-e MIMER_SYSADM_PASSWORD="123"'
alias create_mongo=$'docker run --name mongo_server \\\n-p 27017:27017 \\\n-d mongo:4.4.18'
alias create_redis=$'docker run -d \\\n-p 6379:6379 \\\n-v $PWD/data:/data \\\n--name redis redis:latest redis-server \\\n--appendonly yes \\\n--requirepass "123"'
alias cubguid='qpdfview ~/books/rubics_cub/oll_fridrich.pdf'
alias day='redshift -l 57.8005346:56.8604447 &'
alias dc='sudo docker-compose'
alias dcloc='docker run -d -p 5000:5000 --restart=always --name registry registry:2'
alias debian='VBoxManage startvm debian --type headless'
#alias def=$'\ncd ~/.config/ && \nmv i3 i3_my && \nmv i3status i3status_my && \ncd &&\nmv .Xresources.d .Xresources.d_my &&\nmv .Xresources .Xresources_my &&\ntouch .Xresources\nxrdb -merge ~/.Xresources &&\ni3-msg reload && \ni3-msg restart'
alias delpacketpacman='pacman -Qeq | grep haskell | sudo pacman -Rsn -'
alias devuan='cd kvm/ && sudo ./kvm.sh devuan_openrc.qcow2'
alias djpro='sudo docker compose -f ~/docker_compose/docker-compose-для-сборки-из-изображений.yml'
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'
alias downloader_video='cd /home/zakhar/code/projects/downloader_on_django/locallibrary && py manage.py runserver 0.0.0.0:8000 && cd'
alias dpgk_last='grep " install " /var/log/apt/history.log'
alias dv='sudo docker volume'
alias emon='sudo sh -c '\''ip link set dev wlx503eaadaaa92 down && iw wlx503eaadaaa92 set type managed && ip link set dev wlx503eaadaaa92 up && systemctl start NetworkManager'\'
alias eng='nv ~/code/projects/fileloader/Share/txt/2.txt'
alias exportdocker='sudo docker import '
alias fdisk='sudo fdisk'
alias feh='feh 2>/dev/null'
#alias ffplay='ffplay -nodisp -hide_banner -autoexit'
alias fp='feh --scale-down --auto-zoom -B default '
alias gcc2='gcc -Warray-bounds=1 -O2'
alias gdb='gdb -quiet'
alias get_all_namespaces='sudo kubectl get pods --all-namespaces'
alias get_array='lrange names 0 -1'
alias get_context='sudo kubectl config view'
alias get_set='SMEMBERS names1'
alias get_work='py ~/code/projects/parsers/парсер_заказов_кворк.py'
alias getentropy='cat /proc/sys/kernel/random/entropy_avail'
alias getip='curl -L ifconfig.me && print'
alias getjson_docker_file='sudo docker inspect mysql_docker'
alias githelp='fp ~/Pictures/git_help.png'
alias hm='python ~/code/useful_scripts/rand.py'
alias ifahavehibernation='sudo ntfs-3g -o remove_hiberfile /dev/sdXN /path/to/mount'
alias importdocker='sudo docker load -i '
alias ipw='ip a show wlx503eaadaaa92'
alias ja='nv ~/code/projects/fileloader/Share/txt/1.txt'
#alias kuber_reset=$'sudo kubeadm init phase certs etcd-ca &&\nsudo kubeadm init phase certs etcd-healthcheck-client &&\nsudo kubeadm init phase certs etcd-peer &&\nsudo kubeadm init phase certs etcd-server &&\nsudo kubeadm init phase etcd local'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias lpi='feh --thumbnail --index-info "" -B black'
alias ls='ls --color=auto --sort extension'
alias lsd='ls -d ./*/'
alias lsda='ls -d ./*/ ./.*/'
alias lsf='ls -p|grep -v /'
alias lsfa='ls -pa|grep -v /'
alias lst='ls -lStr|tail -20'
alias lt='ls -St'
alias m1='xrandr --output eDP-1 --mode 1366x768 --output VGA-1 --off'
alias m2='xrandr --output VGA-1 --mode 1600x900 --output eDP-1 --off'
alias migim='xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x0 --output VGA-1 --mode 1600x900 --right-of eDP-1 --pos -1600x0'
alias hidarim='xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x0 --output VGA-1 --mode 1600x900 --left-of eDP-1 --pos -1600x0'



alias m4='xrandr --output eDP-1 --scale 0.5x0.5'
alias m5='xrandr --output eDP-1 --scale 1x1'
alias m7='VBoxManage startvm win7'
alias m8='VBoxManage startvm win8' 
alias mb1='sudo mount /dev/sdb1 ~/tmpb'
alias mc1='sudo mount /dev/sdc1 ~/tmpc'
alias mpip='cd ~/.local/lib/python3.9/'
#alias msfconsole='sudo docker run --rm -it -p 4444:4444 -p 80:80 -p 8080:8080 -p 443:443 -p 445:445 -p 8081:8081 metasploitframework/metasploit-framework'
#alias msfvenom='sudo docker run --rm -it -v "${HOME}/.msf4:/home/msf/.msf4" -v "${PWD}:/data" metasploitframework/metasploit-framework ./msfvenom'
alias mssql='/opt/mssql-tools/bin/sqlcmd -S localhost -U SA'
#alias my=$'\ncd ~/.config/ && \nmv i3_my i3 &&\nmv i3status_my i3status && \ncd &&\nmv .Xresources.d_my .Xresources.d && \nmv .Xresources_my .Xresources &&\nxrdb -merge ~/.Xresources &&\ni3-msg reload && \ni3-msg restart'
alias myip1='wget -qO- ifconfig.me/all'
alias myip2='get -qO- eth0.me'
#alias neofetch='neofetch --w3m ~/Pictures/p3.jpeg'
alias night='redshift -l 36.9181291:-63.4199161 &'
alias nv=nvim
alias off='sudo shutdown -P -h now'
alias poweroff='sudo poweroff'
alias pypy='~/program/pypy3.9-v7.3.11-linux64/bin/pypy3.9'
#alias red=$'cd ~/.config/i3/ && \nrm config &&\nln -s config_red config &&\ni3-msg reload && \ni3-msg restart &&\ncd ~'
alias ren1='echo "$1 name $2"'
alias restart='sudo reboot'
alias rsnet='sudo systemctl restart NetworkManager'
alias ruby_mode='zsh --login'
alias sc='sudo airodump-ng wlx503eaadaaa92 --output-format csv -w out1.txt'
alias search_pack='apt-file -x search'
alias setimage='feh --bg-fill '
alias sgu='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias show_musk='systemctl list-unit-files --state=masked'
alias smon='sudo sh -c '\''systemctl stop NetworkManager && ip link set dev wlx503eaadaaa92 down && iw wlx503eaadaaa92 set monitor control && ip link set dev wlx503eaadaaa92 up'\'
alias snv='sudo -E nvim'
alias startx='startx ~/.xinitrc '
alias stpjp='pkill -9 ibus-daemon'
alias strjp='ibus-daemon -drx'
alias suv='py ~/code/projects/прототип_интернет_магазина/run1.py'
#alias sx='export PORT=80 && sudo sh -c "docker run --rm -d -v ${PWD}/searx:/etc/searx -p $PORT:8080 -e BASE_URL=http://localhost:$PORT/ searx/searx"'
alias synctime='sudo ntpdate pool.ntp.org'
alias ub1='sudo umount /dev/sdb1'
alias uc1='sudo umount /dev/sdc1'
alias uncrypt='john --format=crypt --wordlist=/home/user/password1.txt unshadow1.txt'
alias usru='setxkbmap "us,ru" ",winkeys" "grp:caps_toggle,grp_led:caps"'
alias vbl='VBoxManage list vms'
alias vpn='sshuttle -vvvv -r u1@195.85.250.165:653 -x 195.85.250.165:653 0/0'
alias wf_start='nmcli networking on'
alias wf_stop='nmcli networking off'
alias wge='sudo wg-quick down wg0'
alias sqlite3='sqlite3 --table'


alias stm32cubeide='/home/zakhar/st/stm32cubeide_1.9.0/stm32cubeide &'
alias stm32cubeprg='/home/zakhar/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32CubeProgrammer &'

alias stm32='/home/zakhar/st/stm32cubeide_1.9.0/stm32cubeide && /home/zakhar/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32CubeProgrammer &'
#alias wgetpaste=/home/user/program/t1/wgetpaste

function stop_docker {
	sudo systemctl disable --now docker.socket 
	sudo systemctl disable --now docker.service 
	sudo systemctl disable --now containerd
}

function start_docker {
	sudo systemctl enable --now docker.socket 
	sudo systemctl enable --now docker.service 
	sudo systemctl enable --now containerd
}

function stop_vrt {
	sudo systemctl disable --now sysbox-fs.service	
	sudo systemctl disable --now sysbox-mgr.service	
	sudo systemctl disable --now sysbox.service	
}

function start_vrt {
	sudo systemctl enable --now sysbox-fs.service	
	sudo systemctl enable --now sysbox-mgr.service	
	sudo systemctl enable --now sysbox.service	
}


function wgetpaste {
    cat "$1" | /home/zakhar/soft/t1/wgetpaste       

}

function lock_global {
	sudo iptables -A INPUT -s 192.168.0.0/24 -j ACCEPT
	sudo iptables -A INPUT -j DROP
}

function unlock_global {
	#sudo iptables -A INPUT -s 192.168.0.0/24 -j ACCEPT
	#sudo iptables -A INPUT -j DROP
	sudo iptables -F INPUT
}

function lock_key_sticking {
    seq 8 255 | xargs -n 1 xset -r
}

function unlock_key_sticking {
    seq 8 255 | xargs -n 1 xset r
}


alias wgr='sudo wg-quick down wg0 && sudo wg-quick up wg0'
alias wgs='sudo wg-quick up wg0'
alias which-command=whence
alias wifilist='nmcli dev wifi'
alias wifis='sudo mdk4 wlx983f9f190388 b -a -m -s 500'
alias wtcc='wine /home/zakhar/soft/tcc/tcc.exe'
alias zshrl='source ~/.zshrc'
alias pyupd='sudo update-alternatives --config python3'
alias lsx='ls -l|grep "^-..x"'
alias scu='/home/zakhar/scu/target/release/scu'
alias andr='/home/zakhar/programm/android-studio/bin/studio.sh &'
alias neofetch='neofetch --ascii_distro debian --colors 7 7 7 6 2 2'

# локальные прокси
alias pchromium='chromium --enable-plugins --proxy-server="http://127.0.0.1:8118" --homepage'
alias pchrome='google-chrome --enable-plugins --proxy-server="http://127.0.0.1:8118" --homepage'


alias adb35='/home/zakhar/soft/platform-tools/adb'



# masm32
alias linkmw='wine ~/.wine/drive_c/masm32/BIN/LINK.EXE'
alias mlmw='wine ~/.wine/drive_c/masm32/BIN/ML.EXE'



# выключение и включение в автозагрузку ибаса ёбаного блядь. пидорского
alias off_ibus='sudo dpkg-divert --package im-config --rename /usr/bin/ibus-daemon'
alias on_ibus='sudo dpkg-divert --package im-config --rename --remove /usr/bin/ibus-daemon'


# выключение питания для монитора
alias off_display='xset dpms forse off'
alias on_display='xset dpms forse on'



alias save_ipatables_rule='sudo /etc/init.d/iptables-persistent save'
alias reload_ipatables_rule='sudo /etc/init.d/iptables-persistent reload'
alias avrdude='/home/zakhar/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/bin/avrdude'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi
#eval "$(~/.rbenv/bin/rbenv init - bash)"
#. "$HOME/.cargo/env"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
