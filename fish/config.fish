if status is-interactive

    set fish_greeting

    export EDITOR=nvim

    # -----------------------------------------------------
    # ALIASES
    # -----------------------------------------------------

    fish_add_path /home/ezratweaver/.local/bin

    export ANDROID_HOME=/home/ezratweaver/Android/Sdk

    fish_add_path /home/ezratweaver/Android/Sdk/emulator
    fish_add_path /home/ezratweaver/Android/Sdk/platform-tools

    alias c='clear'
    alias nf='neofetch'
    alias pf='pfetch'
    alias ls='eza -a --icons'
    alias ll='eza -al --icons'
    alias l='eza -a --tree --level=1 --icons'
    alias shutdown='systemctl poweroff'
    alias v='$EDITOR'

    alias vfzf='$EDITOR "$(fzf)"'
    alias cdf='cd ~ && cd $(find . -type d -print | fzf)'

    alias ts='~/dotfiles/scripts/snapshot.sh'
    alias matrix='cmatrix'
    alias wifi='nmtui'
    alias od='~/private/onedrive.sh'
    alias rw='~/dotfiles/waybar/reload.sh'
    alias winclass="xprop | grep 'CLASS'"
    alias dot="cd ~/dotfiles"
    alias cleanup='~/dotfiles/scripts/cleanup.sh'
    alias ml4w='~/dotfiles/apps/ML4W_Welcome-x86_64.AppImage'

    alias bluetooth="bluetuith"

    alias airplane-on="rfkill block all"
    alias airplane-off="rfkill unblock all"
    alias wifi-on="rfkill unblock 1"
    alias wifi-off="rfkill block 1"
    alias bluetooth-on="rfkill unblock 0"
    alias bluetooth-off="rfkill block 0"

    alias g="~/bin/g.sh"
    alias gwx="~/bin/gwx.sh"
    alias p="python"

    function cd --argument dir
        if [ dir = "" ]
            z $HOME
        else
            z $dir
        end
    end

    alias cdi="zi"

    alias gs="git status"
    alias ga="git add"
    alias gam="git commit --amend --no-edit"
    alias gamm="git commit --amend"
    alias gc="git commit -m"
    alias gp="git push"
    alias gpf="git push --force-with-lease"
    alias gr="git restore"
    alias gpl="git pull"
    alias gst="git stash"
    alias gsp="git stash; git pull"
    alias gcheck="git checkout"

end
