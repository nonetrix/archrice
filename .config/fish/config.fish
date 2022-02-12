set fish_greeting ""
neofetch
fish_add_path ~/.local/bin
alias ls=lsd
alias cat="bat -pp"
alias lf=lfrun
alias cls=clear
fish_vi_key_bindings

if status is-interactive
    # Commands to run in interactive sessions can go here
end

