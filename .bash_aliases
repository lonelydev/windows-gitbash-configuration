alias ee='code'
alias ll='ls -lh --color'
alias ls='ls --color'
alias fetch-updates='sudo apt update'
alias install-update='sudo apt upgrade'
alias full-upgrade='sudo apt full-upgrade'
alias autoremove='sudo apt autoremove'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'

function hnp() {
    post_name=$1
    if [[ -z $post_name ]]  || [[ ${#post_name} -lt 5 ]]; then
        echo "ERROR: Please provide a name for your post! Names must be at least 5 characters long."
        echo "Usage: hnp this-is-my-post"
        return 1
    fi
    hugo new "posts/"`date +"%Y-%m-%d"`"-$post_name.md"
}

export hnp
