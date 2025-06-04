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
            {
              name = "JavaSE-17",
              path = "/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home",
            },
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
