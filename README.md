# Zsh plugin for Zellij

## About

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
