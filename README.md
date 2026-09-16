# LazyDoomSlayer's Neovim Configuration

Personal [LazyVim](https://www.lazyvim.org/) configuration for macOS, with language tooling managed through LazyVim extras and Mason.

## Highlights

- LSP, completion, formatting, linting, and Treesitter integration through LazyVim.
- Development support for Go, Rust, Python, PHP, Kotlin, TypeScript, Vue, Svelte, Terraform, Docker, SQL, Nix, and related formats.
- Telescope for project search and navigation.
- Yank history through `yanky.nvim`.
- Surround editing, sticky Treesitter context, integrated tests, and debugging.
- API requests directly from `.http` files.
- Transparent editor, floating-window, Telescope, and Snacks backgrounds.
- Git integration through Gitsigns and the LazyVim-provided Lazygit terminal.

## Requirements

- Neovim 0.11.2 or newer, built with LuaJIT.
- Git, curl, a C compiler, and a Nerd Font.
- `ripgrep`, `fd`, and `fzf` for searching and picking files.
- `tree-sitter-cli` for parser installation and updates.
- `lazygit` for the terminal Git interface.
- The compiler or runtime for each language you intend to use.

On macOS, the main command-line dependencies can be installed with Homebrew:

```bash
brew install neovim ripgrep fd fzf lazygit tree-sitter-cli
```

Install the Apple command-line developer tools if a C compiler is not already available:

```bash
xcode-select --install
```

## Installation

Back up any existing Neovim configuration, then clone this repository:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
git clone git@github.com:LazyDoomSlayer/nvim-configuration.git ~/.config/nvim
nvim
```

LazyVim installs plugins on the first launch. Mason installs the language servers, formatters, linters, and debug adapters requested by the enabled extras.

## Enabled support

The enabled extras are declared in [`lazyvim.json`](./lazyvim.json):

- Editing: Mini Surround, Yanky, Telescope, and Treesitter Context.
- Development workflow: Neotest, DAP debugging, and REST requests through Kulala.
- Formatting and linting: Black, Prettier, Biome, and ESLint.
- Languages and formats: Docker, Git, Go, JSON, Kotlin, Markdown, Nix, PHP, Prisma, Python, Rust, SQL, Svelte, Tailwind CSS, Terraform, TOML, TypeScript, Vue, and YAML.

Language extras configure the editor tooling; they do not necessarily install the underlying compiler, SDK, database, or runtime.

## Platform support

This configuration is currently used and tested on macOS. Its Lua configuration avoids macOS-specific absolute paths and should be portable, but Ubuntu and Fedora installation steps have not yet been verified. Tested Linux prerequisites and package commands should be documented before Linux is listed as officially supported.

## Usage

`<leader>` is the Space key. See the complete [`docs/KEYMAPS.md`](./docs/KEYMAPS.md) reference for Git, surround editing, tests, debugging, Treesitter Context, and REST requests.

Useful maintenance commands:

| Command | Action |
| --- | --- |
| `:Lazy` | Inspect, update, and manage plugins |
| `:LazyExtras` | Enable or disable supported LazyVim extras |
| `:Mason` | Inspect installed development tools |
| `:checkhealth` | Diagnose Neovim and plugin dependencies |

## Repository structure

```text
.
├── init.lua                  # Loads the LazyVim bootstrap
├── lazyvim.json              # Enabled LazyVim extras
├── lazy-lock.json            # Reproducible plugin revisions
├── lua/config/               # Options, mappings, and autocommands
├── lua/plugins/              # Custom plugin specifications
├── docs/KEYMAPS.md           # Keyboard shortcut reference
├── stylua.toml               # Lua formatting rules
└── AGENTS.md                 # Instructions for coding agents
```

The active custom behavior currently lives in `lua/plugins/transparency.lua`. The shipped `example.lua` returns an empty specification and is retained only as a LazyVim reference.

## Maintenance

After pulling configuration changes, start Neovim and run:

```vim
:Lazy sync
:checkhealth
```

Use `:LazyExtras` instead of copying entire LazyVim plugin specifications into this repository. Let Lazy update `lazy-lock.json`; do not edit lockfile revisions manually.

Prettier, Biome, and ESLint are all available. Individual projects should define their intended formatter and linter configuration to avoid overlapping behavior.

## Contributing

See [`CONTRIBUTING.md`](./CONTRIBUTING.md) for the change and validation workflow. Coding agents must also follow [`AGENTS.md`](./AGENTS.md).

## License

This repository is distributed under the terms in [`LICENSE`](./LICENSE).
