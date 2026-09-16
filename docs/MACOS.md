# macOS Setup

## Prerequisites

Install Apple's command-line developer tools and the required command-line programs:

```bash
xcode-select --install
brew install neovim ripgrep fd fzf lazygit tree-sitter-cli
```

Install a Nerd Font if the terminal does not already use one. Homebrew provides several under the `font-*-nerd-font` casks.

## Install the configuration

Back up an existing configuration, clone the repository, and start Neovim:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
git clone git@github.com:LazyDoomSlayer/nvim-configuration.git ~/.config/nvim
nvim
```

Lazy installs editor plugins on the first launch. Mason installs configured editor tools. Language runtimes and SDKs such as Go, Rust, Node.js, Python, PHP, Terraform, or Nix must be installed separately when needed.

## SSH key persistence

Add the GitHub key to the macOS keychain so Git does not repeatedly request its passphrase:

```bash
ssh-add --apple-use-keychain ~/.ssh/personal_key
```

The matching `~/.ssh/config` entry should include:

```sshconfig
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/personal_key
```

## Verify

Inside Neovim, run:

```vim
:checkhealth
:Lazy
:Mason
```

Open Lazygit with `Space g g`.
