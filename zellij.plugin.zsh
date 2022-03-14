#!/usr/bin/env zsh

_is_zellij_cmd_available() {
    [[ -v commands[zellij] ]]
}

_is_zellij_running() {
    [[ -v ZELLIJ ]]
}

_is_vscode_disabled() {
    [[ "$ZELLIJ_ZSH_DISABLE_VSCODE" = "true" && "$TERM_PROGRAM" = "vscode" ]]
}

if _is_zellij_cmd_available && ! _is_zellij_running && ! _is_vscode_disabled; then
    function _zellij_autostart() {
        exec zellij
    }

    autoload -Uz add-zsh-hook
    add-zsh-hook precmd _zellij_autostart
fi
