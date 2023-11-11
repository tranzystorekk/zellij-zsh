# Zsh plugin for Zellij

## About

This project has been moved to [Codeberg](https://codeberg.org/tranzystorekk/zellij.zsh).

A small zsh plugin for autostarting [Zellij](https://zellij.dev/)
as your terminal multiplexer.

Before your shell has started,
checks if the `zellij` command is available and no zellij session is running,
then starts a new session and attaches to it.

## Installation

### [zplug](https://github.com/zplug/zplug)

Add to your `.zshrc`:

```zsh
zplug "tranzystorek-io/zellij-zsh"
```

Then, run `zplug install` and restart your terminal.

### [sheldon](https://github.com/rossmacarthur/sheldon)

Run:

```console
sheldon add --github tranzystorek-io/zellij-zsh zellij-zsh
```

## Configuration

### `ZELLIJ_ZSH_DISABLE_PLUGIN`

Disables this plugin:

```shell
# in your .zshenv file
export ZELLIJ_ZSH_DISABLE_PLUGIN=1
```

### `ZELLIJ_ZSH_DISABLE_VSCODE`

Disables this plugin if running in a Visual Studio Code Terminal:

```shell
# in your .zshenv file
export ZELLIJ_ZSH_DISABLE_VSCODE=1
```

### `ZELLIJ_ZSH_DEBUG_MODE`

Enables additional debug logs in `zellij`:

```shell
# in your .zshenv file
export ZELLIJ_ZSH_DEBUG_MODE=1
```
