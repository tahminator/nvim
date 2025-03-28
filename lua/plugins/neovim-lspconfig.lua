-- /lua/plugins/nvim-lspconfig.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_previous", -- up
            ["<C-k>"] = "move_selection_next", -- down
          },
          n = {
            ["<C-j>"] = "move_selection_previous",
            ["<C-k>"] = "move_selection_next",
          },
        },
      },
      servers = {
        vtsls = {
          settings = {
            typescript = {
              preferences = {
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
                importModuleSpecifier = "non-relative",
              },
            },
          },
        },
      },
    },
  },
}
