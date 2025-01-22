# Dotfiles

Dotfiles managed with Chezmoi.
To install dotfiles to system use:

```zsh
export GITHUB_USERNAME=tomstiani
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply "$GITHUB_USERNAME"
```
