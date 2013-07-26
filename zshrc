PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
 #Path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER=igormarkelov
LANG=en_US.utf8

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
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
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
function staging() { bundle exec heroku $@ --app $(basename `pwd`)-staging ;}
function sandbox() { bundle exec heroku $@ --app $(basename `pwd`)-sandbox ;}
function production() { bundle exec heroku $@ --app $(basename `pwd`)-production ;}

# These aliases are convenient for accessing psql via command line
alias psqld='psql -d printchomp_development'
alias psqlp='psql '\''dbname=d9ispcqspk1dat host=ec2-184-72-230-234.compute-1.amazonaws.com user=u6imi15cfhj82j password=p4ckq757c289ducobt94s57srqm port=5792 sslmode=require'\'''
alias psqls='psql '\''dbname=dnunl5amfi41e host=ec2-23-21-91-29.compute-1.amazonaws.com user=ulloxwxukjyazo password=EeHbN9A-CRkrHI5zTSMD17_T0c port=5432 sslmode=require'\'''
alias psqlt='psql -d printchomp_test'
alias psqlx="psql 'dbname=d5lrmr1kabuehr host=ec2-54-243-234-201.compute-1.amazonaws.com user=hzszetqzleyoim password=uq-fKn4rAIv5KpQFnaI82VBjs6 port=5432 sslmode=require'"
alias psqlx-dev="psql 'dbname=ddtulch66eoo20 host=ec2-54-243-176-239.compute-1.amazonaws.com user=otydcyjiphqgem password=-8Zv5RfVD3vJ72BEg_5qfubCVZ port=5432 sslmode=require'"

# This is temporary to enable easy setting of Printchomp local environment variables - this file should not be checked in

export AWS_ACCESS_KEY_ID='AKIAIEES3LIZDN4WNMWQ'
export AWS_SECRET_ACCESS_KEY='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'

export BEANSTREAM_PROFILES_API_PASSCODE='03a74c951a2E4Eeb89E828d5Ac588C17'
export BEANSTREAM_PROFILES_MERCHANT_ID='267410000'
export BEANSTREAM_PROFILES_PASSWORD='chomp123'
export BEANSTREAM_PROFILES_USER='printchomp'

export BEANSTREAM_US_API_PASSCODE='03a74c951a2E4Eeb89E828d5Ac588C17'
export BEANSTREAM_US_MERCHANT_ID='267410000'
export BEANSTREAM_US_PASSWORD='chomp123'
export BEANSTREAM_US_USER='printchomp'

export CMS_USERNAME='mexican'
export CMS_PASSWORD='couch-munching-salsa'

export FACEBOOK_KEY='392522970811855'
export FACEBOOK_SECRET='2c45f1a0159beab497a5f272c59eda92'

export MAILCHIMP_API_KEY='067ebf3df98ba69b90dae88117a2b106-us5'
export MAILCHIMP_PRINTERS_LIST_ID='ec27c0a212'
export MAILCHIMP_USERS_LIST_ID='c90ce5ff91'

export TWITTER_CONSUMER_KEY='3tWhSNulrjMfMQycvTyHWw'
export TWITTER_CONSUMER_SECRET='h1cVWOyFpn8djesRFAIcVvJlQ0sFWnTZms4IdVoaOo'
export TWITTER_OAUTH_TOKEN='14650214-Opnbg0Ly965E2EAImCjpq8KBMkSVQFShgAjdORgk'
export TWITTER_OAUTH_TOKEN_SECRET='uDn4DBGTF1EINnM2vPgsxhBI9rOEwyIXk5gpkLQqMs'

export SMTP_PASSWORD='chomp123'
export SMTP_USER_NAME='printchomp'

export UPS_ACCESS_KEY='ACA153B539F49AA0'
export UPS_LOGIN='dwhelan'
export UPS_PASSWORD='jv6uBpiJ9vCLxD'

# export EDITOR="/usr/local/bin/mate -w"
export EDITOR="vim"
ctags=/usr/local/bin/ctags

export PATH="/usr/local/bin:$PATH"
