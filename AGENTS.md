# AGENTS.md

## Scope

These instructions apply to the entire repository. This is a personal LazyVim configuration targeting macOS, Ubuntu, and Fedora.

## Goals

- Keep startup reliable and the configuration easy to restore on a new machine.
- Prefer LazyVim conventions and extras over duplicating upstream specifications.
- Keep custom behavior small, explicit, and lazily loaded where appropriate.
- Preserve the transparent-background behavior unless a task explicitly changes it.

## Repository conventions

- Bootstrap and plugin-manager configuration belongs in `lua/config/lazy.lua`.
- General editor options, keymaps, and autocommands belong in their matching file under `lua/config/`.
- Custom plugins and overrides belong in focused files under `lua/plugins/`.
- Enable official integrations through `lazyvim.json` when a suitable LazyVim extra exists.
- Do not hardcode the owner's home directory or machine-specific absolute paths.
- Never commit credentials, tokens, private keys, machine state, plugin caches, Mason packages, logs, or swap files.

## Dependency rules

- Do not manually edit plugin revisions in `lazy-lock.json`; update them through Lazy.
- Distinguish editor tooling from language runtimes. Mason may install an LSP or formatter, but project compilers and SDKs remain external prerequisites.
- Avoid installing a separate Lazygit Neovim plugin. LazyVim uses `Snacks.lazygit` and provides `Space g g` and `Space g G` when the `lazygit` executable is present.
- When adding overlapping formatters or linters, document the project-selection rule and ensure only the intended tool runs for a given repository.

## Editing guidelines

- Keep Lua formatted with StyLua using `stylua.toml`.
- Give every custom keymap a useful `desc` value so WhichKey can display it.
- Prefer extending existing option tables instead of replacing complete LazyVim defaults.
- Use `optional = true` when configuring another plugin that may not be installed.
- Update `README.md` whenever requirements, enabled languages, platform support, or installation steps change.
- Update `docs/KEYMAPS.md` whenever a shortcut is added, removed, or changed.
- Do not claim support for an operating system until its prerequisites and installation workflow have been verified.

## Validation

For Lua changes, run the Mason-provided StyLua when available:

```bash
~/.local/share/nvim/mason/bin/stylua --check lua
```

Then start Neovim and check the affected behavior. For dependency or startup changes, also run:

```vim
:checkhealth
:Lazy
```

Review `git diff --check` before committing. Do not update every plugin merely to validate an unrelated configuration or documentation change.

## Git workflow

- Preserve unrelated user changes.
- Keep commits focused and describe the user-visible outcome.
- Do not force-push or rewrite published history unless explicitly requested.
- Treat deletions of configuration files as material changes and verify that their behavior is no longer required.
