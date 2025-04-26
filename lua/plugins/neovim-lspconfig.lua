-- /lua/plugins/nvim-lspconfig.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      function()
        local keys = require("lazyvim.plugins.lsp.keymaps").get()
        keys[#keys + 1] = { "<c-k>", false }
        -- nvim-lspconfig don't handle this logic anymore. it's spread out between blink.cmp, noice/snacks, etc.
        -- return {
        --   defaults = {
        --     mappings = {
        --       i = {
        --         ["<C-j>"] = "move_selection_previous", -- up
        --         ["<C-k>"] = "move_selection_next", -- down
        --       },
        --       n = {
        --         ["<C-j>"] = "move_selection_previous",
        --         ["<C-k>"] = "move_selection_next",
        --       },
        --     },
        --   },
        -- }
      end,
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
