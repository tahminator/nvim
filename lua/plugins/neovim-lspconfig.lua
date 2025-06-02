-- /lua/plugins/nvim-lspconfig.lua

local enabledFlag = vim.g.started_by_firenvim ~= true

return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      if vim.g.started_by_firenvim == true then
        keys[#keys + 1] = { "K", "" }
      end
      keys[#keys + 1] = { "<c-k>", false }
      -- local client = vim.api.nvim_get_chan_info(vim.v.event.chan).client
      -- if client ~= nil and client.name == "Firenvim" then
      -- end
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
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        enable = enabledFlag,
        underline = enabledFlag,
        update_in_insert = enabledFlag,
        virtual_text = enabledFlag,
        severity_sort = enabledFlag,
        signs = enabledFlag,
      },
      servers = {
        marksman = {
          mason = false,
        },
        markdownlint = {
          mason = false,
        },
        clangd = {
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
        },
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
