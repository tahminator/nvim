return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = {
      handlers = {
        ["$/progress"] = function() end,
      },
    },
    settings = {
      java = {
        project = {
          referencedLibraries = {
            vim.fn.expand("~/jar/json-simple-1.1.1.jar"),
          },
        },
        format = {
          settings = {
            url = vim.fn.expand("~/.config/nvim/java-formatter.xml"),
          },
        },
      },
    },
  },
}
