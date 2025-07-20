# Neovim Install & Update Scripts
Bash scripts to install and update neovim

## Builds neovim from source
- Clones neovim repo to $HOME directory (Update script works on this assumption but can be changed)
- Installs depenedencies
- Installs RelWithDebInfo build type (This can be changed in the scripts)

### All you need to do:

- Run install script

```sh
bash ~/[wherever repo was cloned]/neovim-install-update-scripts/update-neovim.sh
```

- Add neovim to PATH in your .profile or .bashrc or wherever

```sh
NEOVIM_PATH="$HOME/neovim/bin"
PATH="$PATH:$NEOVIM_PATH"
export PATH
```

- Maybe add an alias for the update script for convenience
```sh
alias update-neovim="bash ~/[wherever repo was cloned]/neovim-install-update-scripts/update-neovim.sh"
```

