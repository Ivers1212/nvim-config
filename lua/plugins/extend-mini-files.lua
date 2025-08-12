-- lua/plugins/extend-mini-files.lua
return {
  -- autor/prj_name
  "echasnovski/mini.files",
  -- must be keys
  keys = {
    {
      -- <leader> always mean <space>
      "<leader>e", -- <space>+e
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (directory of current file)",
    },
    {
      "<leader>E",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "open mini.files (cwd)",
    },
    {
      "<leader>fm",
      function()
        require("mini.files").open(LazyVim.root(), true)
      end,
      desc = "Open mini.files (root_dir)",
    },
  },
}
