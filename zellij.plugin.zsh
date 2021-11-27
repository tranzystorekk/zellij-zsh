#!/usr/bin/env zsh

_is_zellij_cmd_available() {
    [[ -v commands[zellij] ]]
}

_is_zellij_running() {
    [[ -v ZELLIJ ]]
}

if _is_zellij_cmd_available && ! _is_zellij_running; then
    function _zellij_autostart() {
        zellij attach -c main
        exit 0
    }

    autoload -Uz add-zsh-hook
    add-zsh-hook precmd _zellij_autostart
fi
