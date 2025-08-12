-- filetype verilog/systemverilog
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "verible" }, -- Mason will install it
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        verible = {
          filetypes = { "verilog", "systemverilog" },
          root_dir = function(fname)
            local util = require("lspconfig.util")
            local uv = vim.uv or vim.loop
            return util.root_pattern(".git", "verilog.conf", ".verible")(fname) or uv.cwd()
          end,
        },
      },
    },
  },
}
