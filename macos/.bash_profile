# Change default shell to bash
# chsh -s /bin/bash
#
# Mozilla preferences
# /Users/bcaro/Library/Thunderbird/installs.ini
# /Users/bcaro/Library/Thunderbird/profiles.ini
# /Users/bcaro/Library/Thunderbird/Profiles/vfp6guox.default-release/prefs.js
# user_pref("mail.server.server1.trash_folder_name", "Deleted Items");
#
# Chrome passwords
# https://passwords.google.com/
# https://www.makeuseof.com/import-passwords-into-chrome/
#
# Phonetool scripts
# https://w.amazon.com/index.php/Greasemonkey/PhoneToolJobData
#
# PreBrief
# https://w.amazon.com/bin/view/HirePreBriefHelper/
#


HISTFILESIZE=1000000000
HISTSIZE=1000000
SHELL_SESSION_HISTORY=0

# export PS1='\d \t \u-mac\$'
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\$(date \"+%a %b %d %Y %T\") \[\033[01;34m\][\w]\[\033[00m\]
\[\033[01;33m\]\u-mac:\[\033[00m\]\$"

# Remapping keys
# See mappings at https://developer.apple.com/library/archive/technotes/tn2450/_index.html#//apple_ref/doc/uid/DTS40017618-CH1-KEY_TABLE_USAGES
# Remap "Insert" key to Right Shift (something that is harmless to hit by mistake)
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000049,"HIDKeyboardModifierMappingDst":0x7000000E5}]}' > /dev/null 2>&1


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR="vi";
export ENV_ENHANCEMENTS=1

export CLOUD='bcaro-cloud.aka.amazon.com'
export BEAST='bcaro-dp.aka.amazon.com'
export DEVBOX='bcaro-ubuntu.aka.amazon.com'

alias x='exit'
alias t='tmux'
alias em='emacs -nw'
alias devbox='ssh -X bcaro-ubuntu.aka.amazon.com'
alias laptop='ssh -X bcaro-ubuntu-laptop.aka.amazon.com'
alias cloud='ssh -X bcaro-cloud.aka.amazon.com'
alias cloudTunnel="ssh -N -L 13390:localhost:3389 bcaro-cloud.aka.amazon.com&"
alias devTunnel="ssh -N -L 13390:localhost:3389 bcaro-ubuntu.aka.amazon.com&"
alias beast='ssh -X bcaro-dp.aka.amazon.com'
alias hilsim='ssh hilsimuser@ua08cfdcc6b33596d02eb.ant.amazon.com'
alias graz='ssh u08002771eaa25846e3ba.ant.amazon.com'
alias can_proxy='ssh -D 18080 -f -C -q -N pi@bcaro-canada.ddns.net'
alias ll='ls -alh'
alias yed='java -jar ~/bin/yed.jar &'
alias vpnConnect="/opt/cisco/anyconnect/bin/vpn connect 'Automatic Selection (Route53)'"
alias vpnDisconnect="/opt/cisco/anyconnect/bin/vpn disconnect"
alias lltty='ls -alh /dev/tty.usb*'
alias lstty='ls -alh /dev/tty.usb*'
alias terminal='sudo screen /dev/tty.usbserial-* 115200 -L'
alias miniterm='minicom -c on -D /dev/tty.usbserial-*  # -s' # esc-x to quit
alias ww="cd ~/Sources/Workspaces"
alias bb="brazil-build"
alias jd-gui="java -jar /Users/bcaro/bin/jd-gui-1.4.0.jar"
alias visual_arm="java -server -Xmx512M -jar /Users/bcaro/Tools/visual_arm/local/bin/visual/content/VisUAL.jar"
alias ctags++='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q /usr/include /usr/local/include'
alias passGen="apg -a 1 -M SNCL -m 12"

function micVol {
    while (( 1 )); do
        osascript -e "set volume input volume 100"
        sleep 1;
    done;
}

function amzClone {
     git clone ssh://git.amazon.com:2222/pkg/$1
}

function diskWaste {
    du -h -d 1
}

function getTopDiskWasters {
    du -h --max-depth=0 `du  --max-depth=1  | sort -r -n | tail -n +2 | head -$1 | grep -v Permission | sed -e 's/^[0-9 ]*//g' `
}

function getAllPIDs {
    ps -aef | grep -i $1 | grep -v "grep" | awk {'print $2'}   
}

function path {
    echo $PATH | tr ':' '\n'
}

function ld_library_path {
    echo $LD_LIBRARY_PATH | tr ':' '\n'
}

function sloc {
    if [ -n "$1" ]; then
        locate "$1" | grep -i "[^A-Za-z_-]$1"
    fi
}

function codeClean {
    for item in $1
    do
        sed -i "s///g" "$item"
        sed -i "s/\t/    /g" "$item"
        sed -i "s/  *$//g" "$item"
    done
}

function addToPathH {
    for item in `echo $PATH | tr ':' '\n'`
    do
        if [[ $item == $1 ]]; then
            echo $1 already on path > /dev/null 2>&1
            return
        fi
    done
    if [[ -e $1  ]]; then
        export PATH=$1:$PATH
    else
        echo "customrc: Cannot add $1 to PATH because it doesn't exist"
    fi
}

function addToPathT {
    for item in `echo $PATH | tr ':' '\n'`
    do
        if [[ $item == $1 ]]; then
            echo $1 already on path > /dev/null 2>&1
            return
        fi
    done
    if [[ -e $1  ]]; then
        export PATH=$PATH:$1
    else
        echo "customrc: Cannot add $1 to PATH because it doesn't exist"
    fi
}

function macBackup {
    scp ~/.bash_profile bcaro-ubuntu.aka.amazon.com:/mnt/local/macBackup
    scp ~/.bash_history bcaro-ubuntu.aka.amazon.com:/mnt/local/macBackup

}

function firstTimeSetup {

    # Install homebrew
    # https://brew.sh/
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    brew install htop
    brew install tmux
    brew install the_silver_searcher
    brew install emacs
    brew install tree
    brew install minicom
    brew install ctags
    brew install git
    brew install vim
    brew install autoconf-archive
    brew install autocode
    brew install automake
    brew install watch
    brew tap microsoft/git
    brew install --cask git-credential-manager-core

# Not sure if these did anything
#brew install pip
#brew install python
#brew install locate

# Downlaod and unzip Spectacle to the /Application folder (https://www.spectacleapp.com
}

addToPathH /usr/local/sbin
addToPathH ~/bin
addToPathH /apollo/env/SDETools/bin
export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"
