return {
  "https://github.com/github/copilot.vim",

  -- THEME
  "https://github.com/catppuccin/nvim",

  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  "mhartington/formatter.nvim",

  "ray-x/guihua.lua",
  "neovim/nvim-lspconfig",
  "nvim-treesitter/nvim-treesitter",
  
  "ray-x/go.nvim",
  config = function()
    require("go").setup()
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries


}
