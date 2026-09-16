# Contributing

This is a personal Neovim configuration, but focused fixes and improvements are welcome.

## Making a change

1. Create a branch from `main`.
2. Prefer an official LazyVim extra when it already implements the requested integration.
3. Put custom plugin configuration in a focused file under `lua/plugins/`.
4. Keep machine-specific paths, credentials, caches, and local project settings out of the repository.
5. Update the README when the change affects installation, dependencies, language support, or platform support.
6. Update `docs/KEYMAPS.md` when a shortcut is added, removed, or changed.

## Validation

For Lua changes:

```bash
~/.local/share/nvim/mason/bin/stylua --check lua
git diff --check
```

Open Neovim, exercise the changed feature, and inspect `:checkhealth` when dependencies or providers are involved. Documentation-only changes require `git diff --check` and a review of the rendered Markdown.

## Commits

Use a concise, imperative commit message. Keep generated plugin updates separate from functional configuration changes when practical.
