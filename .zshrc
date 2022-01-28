export PATH=$PATH:~/.local/bin

HISTFILE=~/.cache/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR=nvim
export VISUAL=nvim

setopt appendhistory

source ~/.config/zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugin/zsh-autosuggestions/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugin/sudo.plugin.zsh
autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m %1 %{$fg[yellow]%}%1d > %{$reset_color%}"

bindkey ';5D' beginning-of-line
bindkey ';5C' end-of-line

bindkey -s '^o' 'nvim $(fzf)^M'

alias lf="lfrun"
alias trm="trash-rm"
alias trp="trash-put"
alias tre="trash-empty"
alias trl="trash-list"
alias trr="trash-restore"
alias grammar="gramma"
alias sxiv="nsxiv"

anime_upscale() {
    realesrgan-ncnn-vulkan -n realesrgan-x4plus-anime -i "$1" -o "$1"-upscale.png
}

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

package() {
    pacman -Q | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")'
}

autoload -U compinit
compinit
_comp_options+=(globdots)

zstyle ':completion:*' menu select

alias anime-upscale=anime_upscale
# Hey smokers druga1 here today we are doing some lsd
alias ls=lsd
alias htop="btop"
# haha xddd pp penis word xddddddddddd kill me please
alias cat="bat -pp"
alias grep="rg"
alias packages=package
alias aur=yay
alias dl="cd ~/Downloads"
alias pro="cd ~/Projects"
alias pict="cd ~/Pictures"
alias desk="cd ~/Desktop"
alias doc="cd ~/Documents"
alias mus="cd ~/Music"
alias vid="cd ~/Videos"
alias hom="cd ~"
alias ~="cd ~"
alias ..="cd .."
alias bac="cd -"

bindkey -s '^l' 'lfcd\n'
bindkey '^H' backward-kill-word

up-directory() {
    cd .. > /dev/null 2>&1
    zle push-line
    zle accept-line
}

back-directory() {
    cd - > /dev/null 2>&1
    zle push-line
    zle accept-line
}
zle -N up-directory
zle -N back-directory
bindkey '^[h' up-directory
bindkey '^[l' back-directory

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

bindkey -s '^e' 'nvim $(fzf)\n'
bindkey -s '^o' 'xdg-open $(fzf)\n'

neofetch

eval $(thefuck --alias)
