-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-treesitter.install").prefer_git = true
vim.filetype.add({
  extension = { v = "verilog", sv = "systemverilog" },
})
