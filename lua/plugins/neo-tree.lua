return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(arg)
          vim.cmd([[
          setlocal relativenumber
        ]])
        end,
      },
    }
    opts.filesystem = opts.filesystem or {}
    opts.filesystem.filtered_items = opts.filesystem.filtered_items or {}
    opts.filesystem.filtered_items.hide_dotfiles = false
  end,
}
