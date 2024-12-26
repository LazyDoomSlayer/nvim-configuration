return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "css", "scss" }, -- add other languages if needed
      sync_install = true,
      auto_install = true,
      ignore_install = {}, -- Add an empty table to prevent errors
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false, -- Optional, can disable additional Vim regex
      },
    })
  end,
}
