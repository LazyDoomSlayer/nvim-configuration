# Linux Setup

The configuration is checked on current Ubuntu and Fedora runners. Package names can differ on older distributions.

## Ubuntu

Install the command-line dependencies:

```bash
sudo apt-get update
sudo apt-get install -y build-essential curl fd-find fzf git ripgrep unzip
```

Install Neovim 0.11.2 or newer from the official Neovim release packages or another trusted repository. Install `tree-sitter-cli` and Lazygit from their official release packages when the distribution version is unavailable or too old.

Ubuntu names the `fd` executable `fdfind`. Create a user-local compatibility link when `/usr/bin/fd` is not present:

```bash
mkdir -p ~/.local/bin
ln -s "$(command -v fdfind)" ~/.local/bin/fd
```

## Fedora

Fedora provides the required base tools and Tree-sitter CLI directly:

```bash
sudo dnf install -y gcc gcc-c++ make curl fd-find fzf git neovim ripgrep tree-sitter-cli unzip
```

Install Lazygit from its official release package if it is not available in the enabled repositories.

## Install the configuration

On either distribution:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
git clone git@github.com:LazyDoomSlayer/nvim-configuration.git ~/.config/nvim
nvim
```

Make sure `~/.local/bin` is in `PATH`. Mason installs editor tooling, but language runtimes and SDKs remain separate system or project dependencies.

## Verify

Inside Neovim, run:

```vim
:checkhealth
:Lazy
:Mason
```

Open Lazygit with `Space g g` after installing the `lazygit` executable.
