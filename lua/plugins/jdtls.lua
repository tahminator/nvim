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
        configuration = {
          runtimes = {
            name = "JavaSE-17",
            path = "/opt/homebrew/opt/openjdk@17/bin",
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
