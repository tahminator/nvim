return {
  "mfussenegger/nvim-jdtls",
  opts = {
    settings = {
      java = {
        format = {
          settings = {
            url = vim.fn.expand("~/.config/nvim/java-formatter.xml"),
          },
        },
      },
    },
  },
}
