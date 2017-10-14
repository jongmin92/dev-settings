# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source my bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# ls 명령어 색상 표시 여부 & 색상 설정
export CLICOLOR=1 
export LSCOLORS=DxFxBxDxCxegedabagacad

# Shell 프롬프트 정보 & 색상 설정 (http://bashrcgenerator.com)
export PS1="\[\033[32;1m\]\u:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) $"
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# MONGODB
export PATH=/usr/local/mongodb/bin:$PATH
# ANDROID_HOME
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools/
export PATH=${PATH}:${ANDROID_HOME}/platform-tools/
export PATH=${PATH}:${ANDROID_HOME}/build-tools/23.0.1/
# NVM
export NVM_DIR="/Users/kimjongmin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
