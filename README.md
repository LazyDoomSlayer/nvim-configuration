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

## Useful commands and keymaps

`<leader>` is the Space key.

| Command or key | Action |
| --- | --- |
| `Space g g` | Open Lazygit at the Git project root |
| `Space g G` | Open Lazygit in Neovim's current directory |
| `:Lazy` | Inspect, update, and manage plugins |
| `:LazyExtras` | Enable or disable supported LazyVim extras |
| `:Mason` | Inspect installed development tools |
| `:checkhealth` | Diagnose Neovim and plugin dependencies |

### Surround editing

| Key | Action |
| --- | --- |
| `gsa` | Add surrounding characters |
| `gsd` | Delete surrounding characters |
| `gsr` | Replace surrounding characters |
| `gsf` / `gsF` | Find surrounding characters right / left |
| `gsh` | Highlight surrounding characters |
| `gsn` | Change the number of surrounding lines searched |

### Tests

| Key | Action |
| --- | --- |
| `Space t t` | Run tests in the current file |
| `Space t T` | Run all tests in the working directory |
| `Space t r` | Run the nearest test |
| `Space t l` | Run the last test again |
| `Space t a` | Attach to the running test |
| `Space t d` | Debug the nearest test |
| `Space t s` | Toggle the test summary |
| `Space t o` | Show test output |
| `Space t O` | Toggle the output panel |
| `Space t w` | Toggle watch mode for the current file |
| `Space t S` | Stop the running test |

### Debugger

| Key | Action |
| --- | --- |
| `Space d b` | Toggle a breakpoint |
| `Space d B` | Set a conditional breakpoint |
| `Space d c` | Run or continue |
| `Space d a` | Run with arguments |
| `Space d C` | Run to the cursor |
| `Space d g` | Go to a line without executing |
| `Space d i` | Step into |
| `Space d j` / `Space d k` | Move down / up the stack frames |
| `Space d O` | Step over |
| `Space d o` | Step out |
| `Space d l` | Run the last debug configuration |
| `Space d P` | Pause execution |
| `Space d s` | Show the active debug session |
| `Space d t` | Terminate debugging |
| `Space d r` | Toggle the debug REPL |
| `Space d u` | Toggle the debugger UI |
| `Space d e` | Evaluate the expression under the cursor or selection |
| `Space d w` | Show debugger widgets |

### Treesitter context

| Key | Action |
| --- | --- |
| `Space u t` | Toggle the sticky Treesitter context header |

### REST requests

These mappings are available in `.http` files unless noted otherwise.

| Key | Action |
| --- | --- |
| `Space R s` | Send the current request |
| `Space R r` | Replay the last request from any buffer |
| `Space R b` | Open the REST scratchpad |
| `Space R c` | Copy the current request as cURL |
| `Space R C` | Paste a cURL command as a request |
| `Space R e` | Select an environment |
| `Space R g` | Download the GraphQL schema |
| `Space R i` | Inspect the current request |
| `Space R n` / `Space R p` | Go to the next / previous request |
| `Space R t` | Toggle between headers and body |
| `Space R S` | Show request statistics |
| `Space R q` | Close the response window |

## Repository structure

```text
.
├── init.lua                  # Loads the LazyVim bootstrap
├── lazyvim.json              # Enabled LazyVim extras
├── lazy-lock.json            # Reproducible plugin revisions
├── lua/config/               # Options, mappings, and autocommands
├── lua/plugins/              # Custom plugin specifications
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
