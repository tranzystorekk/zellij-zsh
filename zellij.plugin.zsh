#!/usr/bin/env zsh

_is_config_enabled() {
    local config_name="$1"
    local variable_name="ZELLIJ_ZSH_${config_name}"
    [[ -n "${(P)variable_name}" && "${(P)variable_name}" != "0" && "${(P)variable_name}" != "false" ]]
}

_is_zellij_cmd_available() {
    [[ -v commands[zellij] ]]
}

_is_zellij_running() {
    [[ -v ZELLIJ ]]
}

_is_vscode_disabled() {
    _is_config_enabled DISABLE_VSCODE && [[ "$TERM_PROGRAM" = "vscode" ]]
}

if _is_zellij_cmd_available && ! _is_zellij_running && ! _is_vscode_disabled; then
    _args=()
    if _is_config_enabled DEBUG_MODE; then
        _args+=("--debug")
    fi

    function _zellij_autostart() {
        exec zellij ${_args[@]}
    }

    autoload -Uz add-zsh-hook
    add-zsh-hook precmd _zellij_autostart
fi
