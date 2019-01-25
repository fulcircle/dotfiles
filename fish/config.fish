alias ga="git add ."
alias gs="git status"
alias gp="git pull"
alias gpo="git push origin HEAD"
alias gc="git commit -m $1"
alias grh="git reset --hard"
alias gac="git add .; git commit -m $1"
alias ll="env LC_COLLATE=C ls -alh --color=auto"
alias l="ll"
alias v="nvim"
alias vim="nvim"
alias vi="nvim"
alias ..="cd .."
alias ...="cd ../.."
alias au="ps aux"
alias h="cd ~"

set PATH $PATH
set EDITOR nvim
set TERM termite

# Pywal theming
cat ~/.cache/wal/sequences &

function fish_mode_prompt
if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
            case default
                set_color --bold --background red white
                echo ' N '
            case insert
                set_color --bold --background green white
                echo ' I '
            case replace_one
                set_color --bold --background green white
                echo ' R '
            case visual
                set_color --bold --background magenta white
                echo ' V '
        end
        set_color normal
        echo -n ' '
    end
end
