vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jj", "<ESC>")

--保存
keymap.set("i", "<leader>w", "<ESC>:w<CR>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
--定义mm返回最新修改位置
keymap.set("n", "mm", "'.zz")

--保存
keymap.set("n", "<leader>w", "<ESC>:w<CR>")

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换窗口
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- 切换buffer
keymap.set("n", "g[", ":bnext<CR>")
keymap.set("n", "g]", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>")

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了
-- keymap.set('n', '<leader>ff', builtin.find_files, {})
-- keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 环境里要安装ripgrep
-- keymap.set('n', '<leader>fb', builtin.buffers, {})
-- keymap.set('n', '<leader>fh', builtin.help_tags, {})
