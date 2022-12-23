# Created by newuser for 5.8.1


alias hm='python ~/Code/useful_scripts/rand.py'
alias ls='ls --color=auto'
alias nv='nvim'

alias mb1='sudo mount /dev/sdb1 ~/tmpb'
alias ub1='sudo umount /dev/sdb1'
alias mc1='sudo mount /dev/sdc1 ~/tmpc'
alias uc1='sudo umount /dev/sdc1'
#alias pastebinit='pastebinit -b http://paste.ubuntu.com'
alias wgetpaste='/home/zakhar/soft/t1/wgetpaste'
#alias ffplay='ffplay -nodisp -hide_banner'

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

ttyctl -f

autoload -U compinit promptinit
compinit
promptinit

prompt walters


zstyle ':completion:*' menu select
setopt completealiases

autoload -U compinit && compinit



#export all_proxy="socks://127.0.0.1:9050/"
#export http_proxy="http://127.0.0.1:8118/"
#export https_proxy="http://127.0.0.1:8118/"


#setopt HIST_IGNORE_DUPS

#setopt EXTENDED_HISTORY



autoload -U colors && colors

#prompt="%{$fg[red]}%n%{$reset_color%}@%{$fg[blue]%}%m{$reset_color%} %%"

PROMPT="[ %{$fg_no_bold[blue]%}%n@%{$reset_color%}%{$fg_bold[blue]%}%U%m%u%{$reset_color%} ] "
RPROMPT="%{$fg_no_bold[green]%}%~ %{$reset_color%}% [%{$fg_no_bold[green]%}%?%{$reset_color%}] "

if [ -f /usr/bin/grc ]; then
 alias gcc="grc --colour=auto gcc"
 alias irclog="grc --colour=auto irclog"
 alias log="grc --colour=auto log"
 alias netstat="grc --colour=auto netstat"
 alias ping="grc --colour=auto ping"
 alias proftpd="grc --colour=auto proftpd"
 alias traceroute="grc --colour=auto traceroute"
fi

#autoload -U run-help
#autoload run-help-git
#autoload run-help-svn
#autoload run-help-svk
#unalias run-help
#alias help=run-help  

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /home/zakhar/scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT='${vcs_info_msg_0_}'
## PROMPT='${vcs_info_msg_0_}%# '
#zstyle ':vcs_info:git:*' formats '%b'

#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT='${vcs_info_msg_0_}'
## PROMPT='${vcs_info_msg_0_}%# '
#zstyle ':vcs_info:git:*' formats '%b'

ex () {
 if [ -f $1 ] ; then
   case $1 in
     *.tar.bz2) tar xvjf $1   ;;
     *.tar.gz)  tar xvzf $1   ;;
     *.tar.xz)  tar xvfj $1   ;;
     *.bz2)     bunzip2 $1    ;;
     *.rar)     unrar x $1    ;;
     *.gz)      gunzip $1     ;;
     *.tar)     tar xvf $1    ;;
     *.tbz2)    tar xvjf $1   ;;
     *.tgz)     tar xvzf $1   ;;
     *.zip)     unzip $1      ;;
     *.Z)       uncompress $1 ;;
     *.7z)      7z x $1       ;;
     *)         echo "'$1' Не может быть распакован при помощи >ex<" ;;
   esac
 else
   echo "'$1' не является допустимым файлом"
 fi
}

pk () {
if [ $1 ] ; then
case $1 in
tbz)       tar cjvf $2.tar.bz2 $2      ;;
tgz)       tar czvf $2.tar.gz  $2       ;;
tar)      tar cpvf $2.tar  $2       ;;
bz2)    bzip $2 ;;
gz)        gzip -c -9 -n $2 > $2.gz ;;
zip)       zip -r $2.zip $2   ;;
7z)        7z a $2.7z $2    ;;
*)         echo "'$1' не может быть упакован с помощью pk()" ;;
esac
else
echo "'$1' не является допустимым файлом"
fi
}









#scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
