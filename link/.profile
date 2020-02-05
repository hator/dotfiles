export PATH="/home/hator/dotfiles/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/hator/.gem/ruby/2.1.0/bin:/home/hator/.cabal/bin"
export PATH="$HOME/.dynamic-colors/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/WebStorm-163.13906.20/bin:$PATH"
export PATH="/opt/pycharm/bin:$PATH"
export PATH="/opt/idea/bin:$PATH"
export PATH="/opt/clion/bin:$PATH"
export PATH="/opt/android-studio/bin:$PATH"
export PATH="/home/hator/.local/bin:$PATH"
export GOPATH="$HOME/w/go"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
    export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

export WORKON_HOME=$HOME/PythonEnvs

export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/tools/bin
export PATH=${PATH}:${ANDROID_HOME}/platform-tools


export EDITOR=vim
export VISUAL=gvim
export BROWSER=chromium

alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'
