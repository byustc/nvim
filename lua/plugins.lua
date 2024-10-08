local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- UI --
	-- - theme
	"navarasu/onedark.nvim",
	"folke/tokyonight.nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"rcarriga/nvim-notify",
	"nvim-lua/lsp-status.nvim",
	"petertriho/nvim-scrollbar",
	-- file tree
	{ "nvim-tree/nvim-web-devicons" },
	{ "kyazdani42/nvim-tree.lua", event = "VimEnter" },
    --bufferline 并添加角标支持
	{ "akinsho/bufferline.nvim", dependencies = { "moll/vim-bbye" } },
	{ "nvim-lualine/lualine.nvim" },
	{ "arkav/lualine-lsp-progress" },
    -- surrounding
    {"kylechui/nvim-surround"},
	-- flash
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
	-- telescope file search
	{ "nvim-telescope/telescope.nvim" },
	"LinArcX/telescope-env.nvim",
	-- 自动补全括号
	{ "windwp/nvim-autopairs" },

	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	-- dashboard
	{ "nvimdev/dashboard-nvim", event = "VimEnter", dependencies = { { "nvim-tree/nvim-web-devicons" } } },
	"ahmedkhalf/project.nvim",
    -- 语法高亮
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	-- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{ "nvimdev/lspsaga.nvim", event = "BufEnter" }, --加强渲染code action
	-- terminal
	"voldikss/vim-floaterm",
	-- format
	{ "nvimtools/none-ls.nvim", dependencies = "nvim-lua/plenary.nvim" },
	-- 补全
	"hrsh7th/nvim-cmp",
	"hrsh7th/vim-vsnip", --snippets引擎
	"hrsh7th/cmp-vsnip", --nvim-cmp和vim-vsnip的桥梁
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"mortepau/codicons.nvim",

	"HiPhish/rainbow-delimiters.nvim",
	-- 常见片段
	"rafamadriz/friendly-snippets", --提示常见代码
	"onsails/lspkind-nvim", --代码类型提示
	-- git
	"lewis6991/gitsigns.nvim",
	-- dap
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"theHamsta/nvim-dap-virtual-text",
	-- go dap
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
		},
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
	},
	-- auto save
	"Pocco81/auto-save.nvim",
	-- leetcode
	{ "kawre/leetcode.nvim", dependencies = {
		"MunifTanjim/nui.nvim",
	} },
	-- markdown
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	-- codeium
	{
		"Exafunction/codeium.nvim",
	},
})
