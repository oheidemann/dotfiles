# Aliases in this file are bash and zsh compatible

# PS
alias psg="ps | grep "
alias psj='ps | grep java'

# Moving around
alias ..='cd ..'

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias du='du -h -d 2'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
#alias ae='vi $yadr/zsh/aliases' #alias edit
#alias ar='source $yadr/zsh/aliases'  #alias reload

# vim using
alias vim=$(brew ls macvim | grep Contents/MacOS/Vim)

# vimrc editing
alias ve='mvim ~/.vimrc'

# zsh profile editing
alias ze='mvim ~/.zshrc'
alias zr='source ~/.zshrc'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'
alias ps='ps aux'

# Zippin
alias gz='tar -zcvf'

# Ruby
# alias c='script/console --irb=pry'
# alias ms='mongrel_rails start'

# Vim/ctags "mctags = make ctags", using the ruby specific version
# to save some time
alias mctags=~/.bin/run_tags.rb #'/opt/local/bin/ctags -Rf ./tags *'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
# alias sgi='sudo gem install --no-ri --no-rdoc'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'
# alias todo='open nvalt://find/todo'

# jq pretty print
alias jsonpretty="jq '.'"