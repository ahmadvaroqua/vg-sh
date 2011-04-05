# Directories
alias cde='cd ~/Dropbox/Projects/VG/Engineering; ls'
alias cdd='cd ~/Downloads; ls'
alias cdp='cd ~/Dropbox/Projects; ls'
alias cdD='cd ~/Desktop; ls'
alias cdr='cd ~/Dropbox/Projects/VG/Engineering/rails_cookbook3; ls'
alias cdr3='cd ~/Dropbox/Projects/VG/Engineering/rails_cookbook3; ls'
alias cda='cd ~/Dropbox/Projects/VG/Engineering/Archives; ls'
alias cdx='cd ~/Dropbox; ls'
alias cdhd='cd ~/Library/VirtualBox/HardDisks; ls'
alias cdm='cd ~/Library/VirtualBox/Machines; ls'
alias cdg='cd ~/Dropbox/Projects/VG/Engineering/Gems; ls'
alias cdb='cd ~/Dropbox/Projects/VG/Engineering/vg-builder; ls'
alias cdvgsh='cd ~/.vg-sh; ls'
alias cdpro='cd ~/.vg-sh; ls'
alias oe='open ~/Dropbox/Projects/VG/Engineering'
alias oa='open ~/Dropbox/Projects/VG/Engineering/Archives'
alias oo='open ~/Dropbox/Projects/VG/Engineering/opscode1'
alias ooc='open ~/Dropbox/Projects/VG/Engineering/opscode1/cookbooks'
alias oor='open ~/Dropbox/Projects/VG/Engineering/opscode1/roles'
alias cdo='cd ~/Dropbox/Projects/VG/Engineering/opscode1; ls'
alias cdoc='cd ~/Dropbox/Projects/VG/Engineering/opscode1/cookbooks; ls'
alias cdor='cd ~/Dropbox/Projects/VG/Engineering/opscode1/roles; ls'
alias cdorvm='cd ~/Dropbox/Projects/VG/Engineering/opscode1/cookbooks/rvm; ls'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'

#-----------------------------------------------
# Capistrano
alias capr='cap deploy:restart'
alias caprestart='cap deploy:restart'
alias capstop='cap deploy:stop'
alias capstart='cap deploy:start'

#-----------------------------------------------
# Thor
alias tud='thor update Dick'
alias tl='thor list'
alias tda='thor dick:app1'
alias tka1='thor dick:killapp1'
alias tdka1='thor dick:killapp1'
alias tdk='thor dick:killapp1'
alias tka='thor dick:killapp1'

#-----------------------------------------------
# Generic
alias ls='LC_COLLATE=C ls -alGh'
alias cl='clear'
alias space='du -hc *'
#alias space='du -Psckx * | sort -nr'
alias eh='sudo vim /etc/hosts'
alias rd='rm -rf'

# Need a comment here
di ()
{
  du -hs $1
}

# Get the total space used by a directory
totalspace ()
{
  du -hc $1 | grep total
}

# cd into a directory and show contents
cc ()
{
  builtin cd $1
  ls -al
}

#-----------------------------------------------
# Vim
alias v='vim'
alias ep='vim ~/.vg-sh/alias.bash'
alias sp='source ~/.vg-sh/alias.bash'
alias vimcheat='vim ~/Dropbox/Tmp/vim_cheatsheet.txt'
alias evim='vim ~/.vimrc'

#-----------------------------------------------
# Servers
alias sdev='ssh ahmadvaroqua@vgdev'
alias vgdev='ssh -t amata@varoquagroup.com "cd /home/amata/varoquagroup.com/current/public/tmp/; bash"'
alias vgb='ssh -t amata@varoquagroup.com "cd /home/amata/varoquagroup.com/current/public/tmp/; vim vg_builder_template_7.rb"'
alias sshvg='ssh -t amata@varoquagroup.com "cd /home/amata/varoquagroup.com/current/public/tmp/; bash"'
alias gemdev='ssh -t amata@varoquagroup.com "cd /home/amata/gems.varoquagroup.com/; bash"'
alias ppndev='ssh -t amata@ppn.varoquagroup.com "cd /home/amata/ppn.varoquagroup.com/current/; bash"'
alias lnmdev='ssh ahmadvaroqua@xp507'

#-----------------------------------------------
# Vagrant
alias vs='vagrant status'
alias vsus='vagrant suspend'
alias vr='vagrant resume'
alias vu='vagrant up'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vssh='vagrant ssh'
alias vd='vagrant destroy'
alias k='knife'
alias kcu='knife cookbook upload'
alias ev='vim ~/Dropbox/Projects/VG/Engineering/vg-builder/Vagrantfile'
alias eb='vim ~/Dropbox/Projects/VG/Engineering/vg-builder/vg_builder_template.rb'

# Useful for basic vagrant testing
vt ()
{
  mkdir $1
  cd $1
  cp ~/Dropbox/Projects/VG/Engineering/vg-builder/Vagrantfile .
}

# Vagrant testing Sinatra Redis build
vsr ()
{
  mkdir $1
  cd $1
  cp ~/Dropbox/Projects/VG/Engineering/vg-builder/VagrantfileSinatraRedis Vagrantfile
}

#-----------------------------------------------
# Git
alias gpom='git push origin master'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gs='git status'
alias ga='git add .'
alias gcm='git commit -m'
alias gl='git log'

# Gets the current task from Time Tracker
get_current_task ()
{
  curl http://tracker-old.liquidphire.com/index.php?current_task=true
}

# Adds and commits code but does not push up
gc ()
{
  git add .
  git commit -m "$(get_current_task)"
}

# Adds, commits and pushes up code
gcp ()
{
  git add .
  git commit -m "$(get_current_task)"
  git push origin master
}

#-----------------------------------------------
# Rails
alias bi='bundle install'
alias r='rails'
alias rdb='rake db:migrate'
alias scaf='rails generate scaffold'
alias scaff='rails generate scaffold'
alias rgs='rails generate scaffold'
alias rgm='rails generate model'
alias cdcurrent='cd /apps/*/current'
alias cdcur='cd /apps/*/current'

#-----------------------------------------------
# VG Builder
vgr ()
{
  # rails new $1 --builder=http://varoquagroup.com/tmp/vg_builder_template_7.rb --skip-prototype --database=mysql
  rails new $1 --builder=~/Dropbox/Projects/VG/Engineering/vg-builder/vg_builder_template.rb --skip-prototype --database=mysql
}

vgc ()
{
  rails new $1 --builder=~/Dropbox/Projects/VG/Engineering/vg-builder/vg_builder_template_canned.rb --skip-prototype --database=mysql
}

#-----------------------------------------------
# Gems
# Push gems up to gems.varoquagroup.com
pg ()
{
  scp $1 amata@gems.varoquagroup.com:/home/amata/gems.varoquagroup.com/public/gems/
  ssh -t amata@gems.varoquagroup.com "cd /home/amata/; gem generate_index -d gems.varoquagroup.com/public/"
}

#-----------------------------------------------
# VGTRACKER
vgt ()
{
  curl -F "username=ahmadvaroqua" -F "password=fuckyou" -F "task=$1" http://vgdev.com/api/task/add
}

vgtc ()
{
  curl -G -d "username=ahmadvaroqua" -d "password=fuckyou" http://vgdev.com/api/task/current
}

vgtct ()
{
  curl -G -d "username=ahmadvaroqua" -d "password=fuckyou" http://vgdev.com/api/task/current/time
}
#-----------------------------------------------
# Redis
alias redflush='redis-cli flushdb'
alias redsize='redis-cli dbsize'
alias redcli='redis-cli'
alias redmon='redis-cli monitor'
alias redinfo='redis-cli info'
