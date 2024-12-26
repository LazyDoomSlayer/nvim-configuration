return {
  {
    "nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
              cargo = {
                autoReload = true,
              },
              formatting = {
                provider = "rustfmt",
              },
            },
          },
        },
      },
    },
  },
}
