# Keymaps

This reference covers shortcuts enabled or emphasized by this configuration. LazyVim provides additional default mappings that WhichKey displays interactively.

`<leader>` is the Space key. For example, `<leader>gg` means press Space, then `g`, then `g`.

## Tmux-aware split navigation

These mappings work across both Neovim splits and tmux panes when Neovim is running inside tmux.

| Shortcut | Action |
| --- | --- |
| `Ctrl-h` | Move left |
| `Ctrl-j` | Move down |
| `Ctrl-k` | Move up |
| `Ctrl-l` | Move right |
| `Alt-h` | Resize left |
| `Alt-j` | Resize down |
| `Alt-k` | Resize up |
| `Alt-l` | Resize right |

## Git

| Key | Action |
| --- | --- |
| `<leader>gg` | Open Lazygit at the Git project root |
| `<leader>gG` | Open Lazygit in Neovim's current directory |

## Surround editing

| Key | Action |
| --- | --- |
| `gsa` | Add surrounding characters |
| `gsd` | Delete surrounding characters |
| `gsr` | Replace surrounding characters |
| `gsf` / `gsF` | Find surrounding characters right / left |
| `gsh` | Highlight surrounding characters |
| `gsn` | Change the number of surrounding lines searched |

## Tests

| Key | Action |
| --- | --- |
| `<leader>tt` | Run tests in the current file |
| `<leader>tT` | Run all tests in the working directory |
| `<leader>tr` | Run the nearest test |
| `<leader>tl` | Run the last test again |
| `<leader>ta` | Attach to the running test |
| `<leader>td` | Debug the nearest test |
| `<leader>ts` | Toggle the test summary |
| `<leader>to` | Show test output |
| `<leader>tO` | Toggle the output panel |
| `<leader>tw` | Toggle watch mode for the current file |
| `<leader>tS` | Stop the running test |

## Debugger

| Key | Action |
| --- | --- |
| `<leader>db` | Toggle a breakpoint |
| `<leader>dB` | Set a conditional breakpoint |
| `<leader>dc` | Run or continue |
| `<leader>da` | Run with arguments |
| `<leader>dC` | Run to the cursor |
| `<leader>dg` | Go to a line without executing |
| `<leader>di` | Step into |
| `<leader>dj` / `<leader>dk` | Move down / up the stack frames |
| `<leader>dO` | Step over |
| `<leader>do` | Step out |
| `<leader>dl` | Run the last debug configuration |
| `<leader>dP` | Pause execution |
| `<leader>ds` | Show the active debug session |
| `<leader>dt` | Terminate debugging |
| `<leader>dr` | Toggle the debug REPL |
| `<leader>du` | Toggle the debugger UI |
| `<leader>de` | Evaluate the expression under the cursor or selection |
| `<leader>dw` | Show debugger widgets |

## Treesitter context

| Key | Action |
| --- | --- |
| `<leader>ut` | Toggle the sticky Treesitter context header |

## REST requests

These mappings are available in `.http` files unless noted otherwise.

| Key | Action |
| --- | --- |
| `<leader>Rs` | Send the current request |
| `<leader>Rr` | Replay the last request from any buffer |
| `<leader>Rb` | Open the REST scratchpad |
| `<leader>Rc` | Copy the current request as cURL |
| `<leader>RC` | Paste a cURL command as a request |
| `<leader>Re` | Select an environment |
| `<leader>Rg` | Download the GraphQL schema |
| `<leader>Ri` | Inspect the current request |
| `<leader>Rn` / `<leader>Rp` | Go to the next / previous request |
| `<leader>Rt` | Toggle between headers and body |
| `<leader>RS` | Show request statistics |
| `<leader>Rq` | Close the response window |
