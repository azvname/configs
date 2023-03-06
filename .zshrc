#[ -f .aliases ] && source .aliases или так
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS
setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

ttyctl -f # для автозавершения

autoload -U compinit promptinit
compinit
promptinit

prompt walters


zstyle ':completion:*' menu select
setopt completealiases # для автозавешения алиасов

autoload -U compinit && compinit

#export all_proxy="socks://127.0.0.1:9050/"
#export http_proxy="http://127.0.0.1:8118/"
#export https_proxy="http://127.0.0.1:8118/"
#export TMPDIR=/home/zakhar/
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:'/opt/1cv8t/x86_64/8.3.22.1603/'
#'/opt/1cv8t/x86_64/8.3.22.1603/1cv8st'
export GOPATH=/home/zakhar/gopath
export PATH=$PATH:/home/zakhar/.local/bin
#setopt HIST_IGNORE_DUPS
#setopt EXTENDED_HISTORY

autoload -U colors && colors
#prompt="%{$fg[red]}%n%{$reset_color%}@%{$fg[blue]%}%m{$reset_color%} %%"
# настройка приглашения командной строки
PROMPT="[%{$fg_no_bold[blue]%}%n@%{$reset_color%}%{$fg_bold[blue]%}%U%m%u%{$reset_color%}]$ "
RPROMPT="%{$fg_no_bold[cyan]%}%~ %{$reset_color%}% [%{$fg_no_bold[cyan]%}%?%{$reset_color%}] "


#autoload -U run-help
#autoload run-help-git
#autoload run-help-svn
#autoload run-help-svk
#unalias run-alias help=run-help  


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

#scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.
#wine /home/zakhar/.wine/drive_c/Program Files (x86)/CA/ERwin Process Modeler r7.3/binaries/AFPM70.exe

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/zakhar/scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if [[ -f ~/.zsh/zshalias||-f ~/.zsh/zdocker ]]; then
    source ~/.zsh/zshalias
    source ~/.zsh/zdocker
else
    print "404: ~/.zsh/zshalias not found."
    print "404: ~/.zsh/zdocker not found."
fi

