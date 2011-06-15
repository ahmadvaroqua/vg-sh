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
alias cdmac='cd ~/Dropbox/Projects/VGTMACCLIENT/Engineering/VGTracker; ls'
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
alias tail='tail -f -n 100'

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
alias rockrack='ssh ahmadvaroqua@50.56.29.18'

#-----------------------------------------------
# Vagrant
alias vs='vagrant status'
alias vsus='vagrant suspend'
alias vr='vagrant resume'
alias vres='vagrant resume'
alias vu='vagrant up'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vssh='vagrant ssh'
alias vd='vagrant destroy'
alias k='knife'
alias kcu='knife cookbook upload'
alias kcd='knife cookbook delete'
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

## Gets the current task from Time Tracker
#get_current_task ()
#{
#  curl http://tracker-old.liquidphire.com/index.php?current_task=true
#}
#
## Adds and commits code but does not push up
#gc ()
#{
#  git add .
#  git commit -m "$(get_current_task)"
#}
#
## Adds, commits and pushes up code
#gcp ()
#{
#  git add .
#  git commit -m "$(get_current_task)"
#  git push origin master
#}

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

kbrs ()
{
  # knife rackspace server create 'role[base]' --server-name server01 --image 49 --flavor 2
  knife rackspace server create "role[$1]" --server-name server01 --image 49 --flavor 2
}

kbas ()
{
  knife ec2 server create "role[$1]" -S amazon -I ~/.ssh/amazon.pem -x ubuntu -G default -i ami-6407f20d -f m1.small -Z us-east-1c
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
# TimeStream
# Add new task
tsn ()
{
  # Show response inline
  # curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt

  # Show response on a new line
  # paste -d " " <(curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt)
  # Use colorized output
  color=$(tput setaf 6)
  reset=$(tput op)
  response=$(paste -d " " <(curl -s -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt))
  echo "${color}${response}${reset}"
}

# Get current task
# Sample response: This is my awesome task
tsc ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current.txt))
  echo "${color}${response}${reset}"
}

# Get current time + task
# Sample response: [00:02:31] This is my awesome task
tsc1 ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current/time-task.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time-task.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time-task.txt))
  echo "${color}${response}${reset}"
}

# Get current task + time
# Sample response: This is my awesome task [00:02:31]
tsc2 ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current/task-time.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/task-time.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/task-time.txt))
  echo "${color}${response}${reset}"
}

# Get current time
# Sample response: 00:02:31
tst ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current/time.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time.txt))
  echo "${color}${response}${reset}"
}

# Get today's tasks
# Sample response:
# 00:02:31 This is my awesome task
# 00:04:07 This is my other awesome task
tstoday ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo.txt))
  echo "${color}${response}${reset}"
}

tssearch ()
{
  # Show response inline
  # curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt

  # Show response on a new line
  # paste -d " " <(curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d " " <(curl -s -G -d "password=demo"  https://timestreamapp.com/demo/search/$*.txt))
  echo "${color}${response}${reset}"
}

get_current_task ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current.txt
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
# Redis
alias redflush='redis-cli flushdb'
alias redsize='redis-cli dbsize'
alias redcli='redis-cli'
alias redmon='redis-cli monitor'
alias redinfo='redis-cli info'
