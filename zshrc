# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"
#ZSH_THEME="powerline"

#users-service-java
export CATALINA_HOME=/usr/local/Cellar/tomcat/8.0.14/libexec
export JAVA_HOME=`/usr/libexec/java_home`
export PWA='/Users/chrisg/work/groupon'

DYLD_LIBRARY_PATH="/usr/local/Cellar/mysql55/5.5.30/lib:$DYLD_LIBRARY_PATH"


#. ~/.vim/bundle/vim-powerline/bindings/zsh/powerline.zsh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/php5/bin:/Users/chrisg/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/chrisg/.rvm/bin:/Users/chrisg/.rvm/bin"

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"




######################### OLD - FROM BASHRC ################################################################################
export PATH="$HOME/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/php5/bin:$PATH
export PATH=/usr/local/bin:$PATH

source ~/.rvm/scripts/rvm

export RUBY_HEAP_MIN_SLOTS=500000 
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000

alias gl='git log'
alias gpom='git pull origin master'
alias gfetch='git fetch'
alias gprune='git remote prune origin'
alias gprune_local="git checkout --quiet master && git branch --merged | grep --invert-match '\\*' | xargs -n 1 git branch --delete; git checkout --quiet @{-1};"
alias li='ls -laF'
alias l3='git log -3'
alias gitlog3='git --no-pager log -3'
alias gitpage='git --no-pager'
alias copybranch='git symbolic-ref head --short | pbcopy' # copy current branch name to copy buffer

alias be="bundle exec"
alias bi="bundle install"
alias cuke='script/cucumber --format pretty'
alias cuc='script/cucumber'
alias cukeserv='script/test_server -e test -p 4000'
alias redis='redis-server'
alias resque='QUEUE=* rake resque:work JOBS_PER_FORK=1 VERBOSE=1'
alias rserver='./rserver'

alias console='script/console'
alias c='script/console'
alias p='script/pry'
alias spec='bundle exec script/spec --colour --format nested'
alias specconsole='script/rspec_console'
alias rspecdoc='rspec --format documentation'

alias rdbml='bundle exec rake db:migrate:local'
alias rdbm='bundle exec rake db:migrate'
alias rdbtp='rake db:test:prepare'
alias rebuild='rake db:rebuild'
alias rebuildassets='rake assets:all:rebuild'
alias seed_prod='rake db:seed:prod_deals'
alias drop_and_setup_local_db='rake db:drop RAILS_ENV=test && rake db:setup RAILS_ENV=test && rake db:migrate RAILS_ENV=test'

alias pry='script/pry'
alias s='script/server'

alias mvim="mvim"
alias mtab="mvim --remote-tab-silent"
alias be="bundle exec"
alias bi="bundle install"
alias cuke='script/cucumber --format pretty'
alias cuc='script/cucumber'
#export SKIP_TEST_SERVER=true
alias cukeserv='script/test_server -e test -p 4000'
alias redis='redis-server'
alias resque='QUEUE=* rake resque:work JOBS_PER_FORK=1 VERBOSE=1'
alias cdhome='cd ~'
alias rserver='./rserver'
alias start_mysql='mysql.server start'
alias start_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_postgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

#alias connectuat='ssh groupon_uat'
alias connectuat='ssh thepoint@web-utility1-uat.snc1'
alias connectuatorders='ssh thepoint@orders-utility1-uat.snc1'
alias connectuatde='ssh dealestate_deploy@dealestate-utility1-uat.snc1'
alias connectstaging='ssh thepoint@web-utility1-staging.snc1'
alias connectstagingorders='ssh thepoint@orders-utility1-staging.snc1'
alias connectorders='ssh thepoint@orders-irb-rw1.snc1'
alias connectnorw='ssh thepoint@irb2.snc1'
alias connectwebutility='ssh thepoint@web-utility1.snc1'
alias connectordersnorw='ssh thepoint@orders-irb1.snc1'
alias connectcs='ssh cs_app@custsvc-app1.snc1'
alias connectuatcs='ssh cs_app@custsvc-app1-uat.snc1'
#alias connectuatcs2='ssh cs_app@custsvc-app2-uat.lup1'
alias connectde='ssh dealestate_deploy@dealestate-app1.snc1'
alias connectzenmaster='ssh zendeskreporting@zenmaster-app1.snc1'
alias connecttoolbox='ssh appops-toolbox.snc1'
alias connecttoolboxuat='ssh appops_deploy@appops-toolbox-uat.lup1'
alias connectgeekon16='ssh hindsight@geekon-app16.snc1'
alias connecthindsightuat='ssh hindsight@hindsight1-uat.snc1'
alias connecthindsight='ssh hindsight@hindsight-app1-dev.snc1'
alias connectcentraldb='ssh commeng-db1.snc1'
alias connectcc='ssh appops-command-center1.snc1'
alias connectuatcc='ssh appops-command-center1-uat.snc1'
alias connectusers='ssh users_service_deploy@users-service-utility1.snc1'
alias connectuserslup1='ssh users_service_deploy@users-service-utility1.lup1'
alias connectusersapp='ssh users_service_deploy@users-service-app1.snc1'
alias connectusersapplup1='ssh users_service_deploy@users-service-app1.lup1'
alias connectuserstat='ssh users_service_deploy@users-service-app1-tat.snc1'
alias connectusersuat='ssh users_service_deploy@users-service-utility1-uat.snc1'
alias connectusersuatlup1='ssh users_service_deploy@users-service-utility1-uat.lup1'
alias connectusersappuat='ssh users_service_deploy@users-service-app1-uat.snc1'
alias connectusersstaging='ssh users_service_deploy@users-service-utility1-staging.snc1'
alias connectusersstaging-perf='ssh users_service_deploy@users-service-app2-staging.snc1'
alias connectuserdatasync='ssh users_service_deploy@user-sync-utility1.snc1'
alias connectuserdatasynclup1='ssh users_service_deploy@user-sync-utility1.lup1'
alias connectuserdatasyncuat='ssh users_service_deploy@user-sync-utility1-uat.snc1'
alias connectuserdatasyncstaging='ssh users_service_deploy@user-sync-utility1-staging.snc1'
alias connectcds='ssh consumer_deploy@consumer-data-service-utility1.snc1'
alias connectcdsuat='ssh consumer_deploy@consumer-data-service-utility1-uat.snc1'
alias connectcdsapp='ssh consumer_deploy@consumer-data-service-app1.snc1'

alias addssh="ssh-add ~/.ssh/* && eval 'ssh-agent' && ssh-ad"

alias console='script/console'
alias c='script/console'
alias p='script/pry'
alias spec='bundle exec script/spec --colour --format nested'
alias specconsole='script/rspec_console'
alias rspecdoc='rspec --format documentation'

alias rdbml='bundle exec rake db:migrate:local'
alias rdbm='bundle exec rake db:migrate'
alias rdbtp='rake db:test:prepare'
alias rebuild='rake db:rebuild'
alias rebuildassets='rake assets:all:rebuild'
alias seed_prod='rake db:seed:prod_deals'
alias drop_and_setup_local_db='rake db:drop RAILS_ENV=test && rake db:setup RAILS_ENV=test && rake db:migrate RAILS_ENV=test'
alias deploy_tomcat='source script/use_jruby && bundle install && script/deploy_to_tomcat.sh'

alias jasmine='rake jasmine:server'
alias jasmine_local='bundle exec rake jasmine:ci'

alias cpgemfile='cp Gemfile Gemfile.local'
alias unset_bundle_gemfile='unset BUNDLE_GEMFILE'

alias ordersserver='script/server -p 3050'
alias pwaserver='memcached -p 11211& ORDERS_PORT=3050 script/server -p 3000'
alias cspwaserver='CS_PORT=3000 ORDERS_PORT=3050 script/server -p 4000'

alias toolbox='cd ~/work/toolbox'
alias hindsight='cd ~/work/hindsight'
alias orders='cd ~/work/orders'
alias scripts='cd ~/work/ticket-scripts/scripts'
alias zenmaster='cd ~/work/zendesk-reporting'
alias gcl='cd ~/work/groupon-config-local'
alias csapp='cd ~/work/cs-groupon'
alias csconfig='cd ~/repos/cs-config'
alias central='cd ~/work/central'
alias gcv2='cd ~/work/groupon_central_v2'
alias emailconfig='cd ~/emailconfig'
alias rocketman='cd ~/rocketman'
alias groupon='cd ~/work/groupon && GRPN'
alias pwa='cd ~/work/groupon && GRPN'
alias p0='rvm use ruby-1.9.3-p0'
alias aodbot='cd ~/work/aod-bot'
alias tree='cd ~/work/dev_decision_tree'
alias ddt='cd ~/work/dev_decision_tree'
alias cc='cd ~/work/command-center'
alias opsconfig='cd ~/work/ops-config/'
alias opstools='cd ~/work/ops-tools/'
alias splunk='cd ~/work/splunk_searches/'
alias metrics='cd ~/work/metrics/'

alias users='cd ~/work/users-service'
alias ruby-client='cd ~/work/users-service-ruby-client'
alias data-sync='cd ~/work/user-data-sync'
alias user-data-sync='cd ~/work/user-data-sync'
alias users-service-deploy='cd ~/work/users-service-deploy'
alias users-deploy='cd ~/work/users-service-deploy'
alias users-config='cd ~/work/users-service-config'
alias client-lib='cd ~/work/client-library-core'
alias client-lib-core='cd ~/work/client-library-core'
alias cds='cd ~/work/consumer-data-service'
alias gts='cd ~/work/groupon-tender-service'
alias sdr='cd ~/work/sdr'
alias doorman='cd ~/work/doorman'

alias php_migrate='APP_ENV=development ./scripts/doctrine migrations:migrate'
alias php_generate_migration='APP_ENV=development ./scripts/doctrine migrations:generate'
alias central_run="cd ~/work/central/src/public && APP_ENV=development php -S localhost:8000"
alias central_tests="APP_ENV=development php scripts/gen-renderer-tests.php"
alias central_reset_dbs="mysql -u root central < ~/Downloads/central_dump && mysql -u root central < ~/Downloads/central_migration_versions_dump"
alias central_merge_upstream="git fetch upstream && git merge upstream/master"

alias precompile_assets='rake assets:precompile'

alias photo='cd ~/personal/photo'
alias connectdreamhost='ssh cgordonphoto@sundance.dreamhost.com'
alias balder='cd ~/personal/balder'
alias heroku_deploy='git push heroku master'
alias compile_assets='rake assets:precompile RAILS_ENV=production'
alias hc='heroku run console'
alias hlogs='heroku logs'
alias heroku_compile_assets='heroku run rake assets:precompile RAILS_ENV=production'

#users
alias use_jruby='source script/use_jruby'
alias use_mri='. script/use_mri'
alias pry='script/pry'
alias s='script/server'
alias tomcat='./script/deploy_to_tomcat.sh'


function GRPN(){
  closed_at=$(curl -s 'http://download.finance.yahoo.com/d/quotes.csv?s=grpn&f=p')
  current_price=$(curl -s 'http://download.finance.yahoo.com/d/quotes.csv?s=grpn&f=l1')

  if [ $( echo "closed_at < current_price" | bc ) ]; then
    color=2
  else
    color=1
  fi

  echo "$(tput setaf $color)GRPN is currently at \$$current_price$(tput sgr0)"
}


# load balance SSH
function connect() {
for i in {1..2}
    do
      export VALUE$i=$(ssh irb-rw$i.snc1 ps awxu | grep -i screen | ruby -e "sum = STDIN.readlines.inject(0){|sum,l|res=l.strip.split(/\s+/); sum += res[4].to_i} ; puts sum") > /dev/null
    done
    wait ${!}
    if [ $VALUE1 -lt $VALUE2 ]; then
      echo "connecting to irb-rw1 as thepoint . . ."
      ssh irb-rw1.snc1 -l thepoint
    else
      echo "connecting to irb-rw2 as thepoint . . ."
      ssh irb-rw2.snc1 -l thepoint
    fi
  }


#Here'e a bash function that pretty prints JSON output from curl.
function jcurl() { curl -s -S $@ | python -m json.tool; }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

####### for ops package recipes #########
function pkg {
        PKGNAME=$(pkgver $1)
        ln -s $1 $PKGNAME
        gtar -czhvf $PKGNAME.tar.gz $PKGNAME
        echo "Done. Now run:\npkgup $PKGNAME.tar.gz"
}

# need to be on the office network or VPN for this to work
# in case of usage of the http proxy thru a ssh tunnel run (change the port if needed)
#  export http_proxy="http://localhost:3132"
function pkgup {
        curl --upload-file $1 http://config.snc1/package/
}

function pkgver {
        echo "$1-$(date +%Y.%m.%d_%H.%M)"
}

function gendate {
        date +%Y.%m.%d_%H.%M
}
#########################################

