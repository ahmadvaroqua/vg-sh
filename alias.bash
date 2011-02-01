# Custom aliases for Ahmad # Directories
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
#alias oe='osascript ~/.scripts/f4.scpt; sleep 2; open ~/Dropbox/Projects/VG/Engineering'
#alias oe=`osascript -e 'tell application \"System Events\" to key code 118'; open ~/Dropbox/Projects/VG/Engineering`
#alias oe='osascript -e "tell application \"System Events\" to key code 118"; open ~/Dropbox/Projects/VG/Engineering'
alias oe='open ~/Dropbox/Projects/VG/Engineering'
alias oa='open ~/Dropbox/Projects/VG/Engineering/Archives'
alias oo='open ~/Dropbox/Projects/VG/Engineering/opscode1'
alias ooc='open ~/Dropbox/Projects/VG/Engineering/opscode1/cookbooks'
alias oor='open ~/Dropbox/Projects/VG/Engineering/opscode1/roles'

# Capistrano
alias capr='cap deploy:restart'
alias caprestart='cap deploy:restart'
alias capstop='cap deploy:stop'
alias capstart='cap deploy:start'

# Applications
alias v='vim'
alias ls='ls -alG'
alias cl='clear'
alias k='knife'
alias r='rails'
alias sdev='ssh ahmadvaroqua@vgdev'
#alias sdev='ssh -p 2222 ahmadvaroqua@vgdev'
alias vgdev='ssh -t amata@varoquagroup.com "cd /home/amata/varoquagroup.com/current/public/tmp/; bash"'
alias vgb='ssh -t amata@varoquagroup.com "cd /home/amata/varoquagroup.com/current/public/tmp/; vim vg_builder_template_7.rb"'
alias sshvg='ssh -t amata@varoquagroup.com "cd /home/amata/varoquagroup.com/current/public/tmp/; bash"'
alias gemdev='ssh -t amata@varoquagroup.com "cd /home/amata/gems.varoquagroup.com/; bash"'
alias ppndev='ssh -t amata@ppn.varoquagroup.com "cd /home/amata/ppn.varoquagroup.com/current/; bash"'
alias lnmdev='ssh ahmadvaroqua@xp507'
alias vs='vagrant status'
alias vsus='vagrant suspend'
alias vr='vagrant resume'
alias vu='vagrant up'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vssh='vagrant ssh'
alias vd='vagrant destroy'
alias rd='rm -rf'
alias kcu='knife cookbook upload'
#alias space='du -Psckx * | sort -nr'
alias space='du -hc *'
alias ep='vim ~/.vg-sh/alias.bash'
alias sp='source ~/.vg-sh/alias.bash'
alias ev='vim ~/Dropbox/Projects/VG/Engineering/vg-builder/Vagrantfile'
alias eb='vim ~/Dropbox/Projects/VG/Engineering/vg-builder/vg_builder_template.rb'
alias eh='sudo vim /etc/hosts'

# Tmp aliases
alias cdo='cd ~/Dropbox/Projects/VG/Engineering/opscode1; ls'
alias cdoc='cd ~/Dropbox/Projects/VG/Engineering/opscode1/cookbooks; ls'
alias cdor='cd ~/Dropbox/Projects/VG/Engineering/opscode1/roles; ls'
alias cdorvm='cd ~/Dropbox/Projects/VG/Engineering/opscode1/cookbooks/rvm; ls'
alias vimcheat='vim ~/Dropbox/Tmp/vim_cheatsheet.txt'

# Git aliases
alias gpom='git push origin master'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gs='git status'
alias ga='git add .'
alias gcm='git commit -m'

get_tracker_entry ()
{
  curl http://tracker-old.liquidphire.com/index.php?current_task=true
}

# Test
gcp ()
{
  git add .
  git commit -m \"get_tracker_entry\"
}

# Rails aliases
alias bi='bundle install'

# Functions (aliases that take arguments)
cc ()
{
  builtin cd $1
  ls -al
}

vgr ()
{
  # rails new $1 --builder=http://varoquagroup.com/tmp/vg_builder_template_7.rb --skip-prototype --database=mysql
  rails new $1 --builder=~/Dropbox/Projects/VG/Engineering/vg-builder/vg_builder_template.rb --skip-prototype --database=mysql
}

vgc ()
{
  rails new $1 --builder=~/Dropbox/Projects/VG/Engineering/vg-builder/vg_builder_template_canned.rb --skip-prototype --database=mysql
}

vt ()
{
  mkdir $1
  cd $1
  cp ~/Dropbox/Projects/VG/Engineering/vg-builder/Vagrantfile .
}

di ()
{
  du -hs $1
}

totalspace ()
{
  du -hc $1 | grep total
}

pg ()
{
  scp $1 amata@gems.varoquagroup.com:/home/amata/gems.varoquagroup.com/public/gems/
  ssh -t amata@gems.varoquagroup.com "cd /home/amata/; gem generate_index -d gems.varoquagroup.com/public/"
}
