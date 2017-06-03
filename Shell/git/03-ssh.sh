function cdgit {
    if ! [[ -d .git ]]; then
         cd ..
    fi
}

function gitsw {
    # $1 is the username of the repo
    git remote rm origin
    git remote rm upstream

    SCWD=$PWD

    for i in {1..20}
    do
         cdgit
    done

    CWD=${PWD##*/}
    if [[ "$CWD" =~ ^\. ]]; then
         GWD="${CWD#.}"
         if [[ -n "$1" ]]; then
              git remote add origin git@github.com:$1/$GWD.git
              git remote add upstream git@github.com:$1/$GWD.git
         else
              git remote add origin git@github.com:fusion809/$GWD.git
              git remote add upstream git@github.com:fusion809/$GWD.git
         fi
    else
         if [[ -n "$1" ]]; then
              git remote add origin git@github.com:$1/$CWD.git
              git remote add upstream git@github.com:$1/$CWD.git
         else
              git remote add origin git@github.com:fusion809/$CWD.git
              git remote add upstream git@github.com:fusion809/$CWD.git
         fi
    fi
    cd $SCWD
}

alias SSH=gitsw
alias gitssh=gitsw
alias gits=gitsw

#############################################################
# The following script was taken from
# http://stackoverflow.com/a/18915067/1876983
#############################################################
# Sign in with SSH at startup
# Makes contributing to GitHub projects a lot simpler.
if [[ -a $HOME/.ssh/environment ]]
then
  SSH_ENV=$HOME/.ssh/environment
elif [[ $USER == fusion809 ]]
then
  ssh-keygen -t rsa -b 4096 -C "brentonhorne77@gmail.com"
  SSH_ENV=$HOME/.ssh/environment
  git config --global user.name "fusion809"
  git config --global user.email "brentonhorne77@gmail.com"
fi

# start the ssh-agent
# Remember, for this to work you need your SSH keys setup
# https://help.github.com/articles/generating-ssh-keys/
function start_agent {
  echo "Initializing new SSH agent..."
  # spawn ssh-agent
  /usr/bin/ssh-agent | /bin/sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add
}

if [[ -f "${SSH_ENV}" ]]; then
  . "${SSH_ENV}" > /dev/null
  /bin/ps -ef | /bin/grep ${SSH_AGENT_PID} | /bin/grep ssh-agent > /dev/null || {
    start_agent;
  }
else
  start_agent;
fi
#############################################################
