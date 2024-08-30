local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
  "folke/tokyonight.nvim", -- 主题
  "nvim-lualine/lualine.nvim",  -- 状态栏
  "nvim-tree/nvim-tree.lua",  -- 文档树
  "nvim-tree/nvim-web-devicons", -- 文档树图标

  "christoomey/vim-tmux-navigator", -- 用ctl-hjkl来定位窗口
  "nvim-treesitter/nvim-treesitter", -- 语法高亮
  "p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  },
  "nvimdev/lspsaga.nvim", --加强code action

      -- 自动补全引擎框架,提供不同的片段源
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp", --源于语言服务工程片段源，依赖nvim-lspconfig
  "hrsh7th/cmp-buffer",--通过文本解析得到片段源
  "hrsh7th/cmp-path",-- 文件路径
  "hrsh7th/cmp-cmdline",

  -- for luasnip users
  "L3MON4D3/LuaSnip", -- snippets引擎，提供补全过程UI能力
  "saadparwaiz1/cmp_luasnip",--nvim-cmp和LuaSnip之间的桥梁
  "rafamadriz/friendly-snippets",--提供常见代码
  "onsails/lspkind.nvim",--代码提示，显示分类的小图标支持

  "numToStr/Comment.nvim", -- gcc和gc注释
  "windwp/nvim-autopairs", -- 自动补全括号

  "akinsho/bufferline.nvim", -- buffer分割线
  "lewis6991/gitsigns.nvim", -- 左则git提示

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', -- 文件检索
    dependencies = { {'nvim-lua/plenary.nvim'} } -- requires要改为dependencies
  },

}
local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)
