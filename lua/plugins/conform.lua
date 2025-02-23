return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    -- Disable formatting for SQL
    opts.formatters_by_ft.sql = nil
  end,
}
