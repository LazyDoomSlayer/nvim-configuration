return {
  -- Load Telescope first
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  -- Then load project.nvim
  {
    "ahmedkhalf/project.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" }, -- Make sure telescope is a dependency
    config = function()
      require("project_nvim").setup({
        manual_mode = true,
        detection_methods = { "pattern" },
        patterns = { ".git", "Makefile", "package.json", "pyproject.toml" },
      })
      -- Load the Telescope projects extension
      require("telescope").load_extension("projects")
    end,
  },
}
