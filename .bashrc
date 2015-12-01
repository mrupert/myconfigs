export TERM='xterm-256color'
#export TERM='xterm'
export EDITOR=mvim

# Set some colors
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
black='\e[0;30m'
blue='\e[0;34m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
yello='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'
NC='\e[0m'              # No Color


###################################################################
# MAC SPECIFIC
###################################################################
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias unhidefiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# iTerm shell integration
source ~/.iterm2_shell_integration.`basename $SHELL`


#export DISPLAY=:0.0
alias grep="grep --color=auto"
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
alias less='less --RAW-CONTROL-CHARS'
export LS_OPTS='--color=auto'
alias ls='ls ${LS_OPTS}'

export LSCOLORS=1
export LS_COLORS=ExFxBxDxCxegedabagacad
export LSCOLORS=ExFxBxDxCxegedabagacad
# Maven OPTS
unset MAVEN_OPTS
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m" 
export VIM="~/.vim/.vimrc"
export MYVIMRC="~/.vim/.vimrc"
alias mvim='/opt/local/bin/mvim'

export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth # ... and ignore same sucessive entries.

alias udrive="smb://vnxcifs/users/matthew.rupert"

export COPYFILE_DISABLE=true # Do not include _ hidden files (MacOS) in tarballs

# POSTGRES
export PGDATA="/Users/matthew.rupert/pgsql/data"

# ITERM
alias iterm='open /Applications/iTerm.app'
alias pg-start='pg_ctl -D /Users/matthew.rupert/pgsql/data -l logfile start'
alias pg-stop='pg_ctl stop'

export PS1="\[\e[0;31m\]\u \[\e[0;34m\]\w $ \[\e[0;0m\]"
export PS2=" | => "
export ARCH_FLAGS="-arch x86_64"
export TMMLOGFILE="/tmp/tmmConfigLog.log"
shopt -s checkwinsize

mvn=/usr/local/mvn/bin
macport=/opt/local/bin:opt/local/sbin
postgres=/opt/local/lib/postgresql93/bin
export PATH=/usr/local/bin:$macport:$mvim:${postgres}:${mvn}:${PATH}

#SVN EDITOR
export SVN_EDITOR=vi

# MY ALIASES
alias ls='ls --color=auto'
alias la='ls -latr'
alias ll='ls -FGlAhp'
alias ls='ls -GFh'
alias ll='ls -la --color=auto'
alias later='ls -latr --color=auto'
alias diff='colordiff' ## colordif must be installed
alias mssh="ssh $1 -l mrupert"
alias cic='set completion-ignore-case On'
alias qfind="find . -name "
alias memhogs="top -l 1 -o rsize | head -20"
alias df='df -h'
alias du='du -h -c'
alias reload='source ~/.bashrc'
alias biggest='BLOCKSIZE=1048576; du -x | sort -nr | head -10'
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'
alias dupes=fdupes

##alias cleardns="sudo killall -HUP mDNSResponder" ## _mdnsresponder
#alias cleardns2="sudo killall -HUP mDNSResponder"
# Flush dnscache el capitan:
alias cleardns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed"
alias c='clear'

alias cleardns="sudo killall -HUP _mdnsresponder" 
alias test-fuse="ssh smx@test-fuse.dep.ateb.com -p 8101"
alias mobile-demo="ssh smx@webapp3.dep.ateb.com -p 8101"
alias mobile-dev="ssh smx@webapp3.dep.ateb.com -p 8102"
alias tmmConfig="ssh centos6-2-dev.ateb.com -l tmmConfig"
alias tmmconfig="ssh centos6-2-dev.ateb.com -l tmmConfig"
alias test-fuse64="ssh test-fuse64.dep.ateb.com -l mrupert"
alias mobileweb1="ssh mobileweb1.dep.ateb.com -l mrupert"
alias fuse3="ssh fuse3.dep.ateb.com -l mrupert"
alias fuse1="ssh fuse1.dep.ateb.com -l mrupert"
alias fuse2="ssh fuse2.dep.ateb.com -l mrupert"
alias proxy1="ssh proxy1.dep.ateb.com -l mrupert"
alias webapp1="ssh webapp1.dep.ateb.com -l mrupert"
alias webapp2="ssh webapp2.dep.ateb.com -l mrupert"
alias webapp3="ssh webapp3.dep.ateb.com -l mrupert"
alias pmap1="ssh pmap1.dep.ateb.com -l mrupert"
alias pmap2="ssh pmap2.dep.ateb.com -l mrupert"
alias pmap3="ssh pmap3.dep.ateb.com -l mrupert"
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias pmap4="ssh pmap4.dep.ateb.com -l mrupert"
alias dock01="ssh dock01-dev.dep.ateb.com -l mrupert"
alias dock01p="mrupert@dock01-prd.dep.ateb.com"
alias dock03="ssh mrupert@dock03-prd.dep.ateb.com"
alias dock03-prd="ssh mrupert@dock03-prd.dep.ateb.com"
alias dock01-app="ssh mrupert@dock01-app.dep.ateb.com"
alias test-pmap="ssh test-pmap.dep.ateb.com -l mrupert"
alias dt="cd ~/Desktop"
alias wa1="ssh webapp1.dep.ateb.com -l mrupert"
alias wa2="ssh webapp2.dep.ateb.com -l mrupert"
alias wa3="ssh webapp3.dep.ateb.com -l mrupert"
alias dataproca="ssh mrupert@dataproc.mrk.ateb.com"
alias dataproc="ssh dataproc.dep.ateb.com -l mrupert"
alias lock="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias vim="mvim"
alias vi="mvim"
alias l="ls -latr"
alias svu="svn up"
alias psd="open -a /Applications/Adobe\ Photoshop\ Elements\ 11/Photoshop\ Elements\ 11\ Organizer.app"
alias pgadmin="open /Applications/PostgreSQL\ 9.3/pgadmin\ III.app"
alias ireport="/Applications/iReport-3.0.0/iReport.sh"

alias psqla="psql --host vm-db1.dep.ateb.com --port 5432 --username mrupert --dbname ATEBMART"
alias psqlca="psql --host db-test-01.twa.ateb.com 5432 --username mrupert --dbname ateb"
alias psql-analytics="psql --host vm-db1.dep.ateb.com --port 5432 --username mrupert --dbname ATEBMART"
alias psql-dev="psql --host db4.dep.ateb.com --port 5432 --username mrupert ateb_development"
alias psqld="psql --host db4.dep.ateb.com --port 5432 --username mrupert ateb_development"
alias psql-qa="psql --host db8.dep.ateb.com --port 5432 --username mrupert ateb"
alias edit="atom"
alias fuseps="ps aux | grep fuse"
alias fps="ps aux | grep fuse"
alias fs="ssh admin@localhost -p8101"
alias localjb="cd /opt/jbossfuse"
alias localjbb="cd /opt/jbossfuse61/bin"
alias jb="cd /opt/jbossfuse"
alias jbb="cd /opt/jbossfuse61/bin"
# Up 'n' folders
alias cd..="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
alias cd6="cd ../../../../../.."
alias cd7="cd ../../../../../../.."
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias dproc="ssh mrupert@dataproc.dep.ateb.com"
alias ca-rr="open http://dock02-prd.mrk.ateb.com:38580/obc/pages/welcome.html"
alias dock02_ca="ssh mrupert@dock02-prd.mrk.ateb.com"
alias dock01_ca="ssh mrupert@dock01-prd.mrk.ateb.com"
alias dock01p="mrupert@dock01-prd.dep.ateb.com"
alias dock03p="mrupert@dock03-prd.dep.ateb.com"
alias dock02p="mrupert@dock02-prd.dep.ateb.com"
alias dock01d="mrupert@dock01-dev.dep.ateb.com"
alias dock02d="mrupert@dock02-dev.dep.ateb.com"
alias dock03d="mrupert@dock03-dev.dep.ateb.com"

# CANADA ALIASES
alias tmmConfigCA="ssh -p 58622 mrupert@dock01–prd.mrk.ateb.com"
alias rrca="open http://dock02-prd.mrk.ateb.com:38580/obc/pages/welcome.html"
alias myxAdminCA="open http://dock02-prd.mrk.ateb.com:38481/admin/view/main"

alias wtf='clear; cat ~/wtf.txt'
alias mrk='TERM=rxvt-256color ssh mrupert@dataproc.mrk.ateb.com'

alias src='cd ~/Desktop/12.x'
alias sp-jdk-16='export JAVA_HOME="$(/usr/libexec/java_home -v 1.6)"'
alias sp-jdk-17='export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"'
alias sp-jdk-18='export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"'
alias usejava6='export JAVA_HOME="$(/usr/libexec/java_home -v 1.6)"'
alias usejava7='export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"'
alias usejava8='export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"'
#sp-jdk-17



#-------------------------------------------------------------------
#-------------------------------------------------------------------
# Memeory use
#-------------------------------------------------------------------
#-------------------------------------------------------------------
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#-------------------------------------------------------------------
#-------------------------------------------------------------------
# Useful system info
#-------------------------------------------------------------------
#-------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Show hidden files
showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
#sysinfo.sh

#PATH="/Users/matthew.rupert/perl5/bin${PATH+:}${PATH}"; 
#export PATH;
#PERL5LIB="/Users/matthew.rupert/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/Users/matthew.rupert/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/Users/matthew.rupert/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Users/matthew.rupert/perl5"; export PERL_MM_OPT;
#
# Ruby Version
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # export rvm scripts to shell
rvm use 1.9.3 #ruby-1.9.3-p551

# Java Version
usejava7
