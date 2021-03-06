# Set architecture flags
export ARCHFLAGS="-arch x86_64"

for d in /etc/bash.bashrc ~/.bashrc ~/.profile ~/.rvm/scripts/rvm
do
   test -s "$d" && source "$d"
done

export TMPDIR=/tmp
export EDITOR=vim
export MANPATH=/opt/local/share/man:$MANPATH
export DISPLAY=:0.0

export CVS_RSH=ssh

export HISTTIMEFORMAT="%H:%M:%S "

export PYTHONDONTWRITEBYTECODE=1

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PYENV_SHELL=bash

export WORKON_HOME="${HOME}/.virtual_envs"
if [ ! -d "${WORKON_HOME}" ]; then
    echo mkdir "${WORKON_HOME}"
    mkdir "${WORKON_HOME}"
fi

for d in \
         "${HOME}/.rvm/bin" \
         "/c/Program Files/GnuWin32/bin" \
         /Library/Frameworks/Python.framework/Versions/Current/bin \
         /usr/texbin \
         /c/Python24/Scripts \
        "${HOME}/bin" \
        /opt/local/bin \
        /usr/local/opt/curl/bin \
        /usr/local/opt/python/libexec/bin \
        "${HOME}/.pyenv/shims" \
        "${HOME}/.poetry/bin" \
        "${HOME}/.local/bin" \
        "${HOME}/Library/Python/3.7/bin" \
        /home/linuxbrew/.linuxbrew/bin


do
    test -d "$d" && export PATH="$d":"$PATH"
done

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
