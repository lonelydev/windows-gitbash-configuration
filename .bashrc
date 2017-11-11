
alias ee='/c/emacs/bin/emacs'
alias ll='ls -lh --color'
alias ls='ls --color'

if [ -n "$INSIDE_EMACS" ]; then
    export PS1='\[\033[32m\][\D{%F %T}]\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '
else
    bind '"\e[A"':history-search-backward
    bind '"\e[B"':history-search-forward
    
    redColour=$(tput setaf 1)
    blueColour=$(tput setaf 4)
    cyanColour=$(tput setaf 6)
    greenColour=$(tput setaf 2)
    colorReset=$(tput sgr0)
    #source ~/.config/.git-prompt.sh
    #\h is host name, which is always going to be egopalakrishpc anyway
    #\u is your username, and you know it is you anwyay
    PS1="\[$redColour\][\D{%F %T}]\[$blueColour\][\w]\[$cyanColour\]\[$greenColour\]\$(__git_ps1)\[$colorReset\]> "
    PROMPT_COMMAND='echo -n -e "\033k\033\0134"'
    shopt -s checkwinsize
fi
# solarized dark
echo -ne '\e]4;0;#073642\a'   # black
echo -ne '\e]4;1;#dc322f\a'   # red
echo -ne '\e]4;2;#859900\a'   # green
echo -ne '\e]4;3;#b58900\a'   # yellow
echo -ne '\e]4;4;#268bd2\a'   # blue
echo -ne '\e]4;5;#d33682\a'   # magenta
echo -ne '\e]4;6;#2aa198\a'   # cyan
echo -ne '\e]4;7;#eee8d5\a'   # white (light grey really)
echo -ne '\e]4;8;#002b36\a'   # bold black (i.e. dark grey)
echo -ne '\e]4;9;#cb4b16\a'   # bold red
echo -ne '\e]4;10;#586e75\a'  # bold green
echo -ne '\e]4;11;#657b83\a'  # bold yellow
echo -ne '\e]4;12;#839496\a'  # bold blue
echo -ne '\e]4;13;#6c71c4\a'  # bold magenta
echo -ne '\e]4;14;#93a1a1\a'  # bold cyan
echo -ne '\e]4;15;#fdf6e3\a'  # bold white

echo -ne '\e]10;#eee8d5\a'  # foreground
echo -ne '\e]11;#002b36\a'  # background
echo -ne '\e]12;#859900\a'  # cursor
cat ~/.asci_home

