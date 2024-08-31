vim.g.mapleader = " "

local keymap = vim.keymap

local opt = {noremap = true, silent = true}

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jj", "<ESC>", opt)

--保存
keymap.set("i", "<leader>w", "<ESC>:w<CR>", opt)

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opt)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opt)

-- visual模式下缩进代码
keymap.set("v", "<", "<gv", opt)
keymap.set("v", ">", ">gv", opt)
-- ---------- 正常模式 ---------- ---
--定义mm返回最新修改位置
keymap.set("n", "mm", "'.zz", opt)

--保存
keymap.set("n", "<leader>w", "<ESC>:w<CR>", opt)

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", opt)

-- 分屏 sv(split vertically) sh(split horizontally)
keymap.set('n', 'sv', ':vs<CR>', opt)
keymap.set('n', 'sh', ':sp<CR>', opt)
-- 关闭当前窗口 (close)
keymap.set('n', 'sc', '<C-w>c', opt)
-- 关闭其他窗口 (close other)
keymap.set('n', 'so', '<C-w>o', opt)


-- Alt + hjkl 在窗口之间跳转
keymap.set('n', 'wh', '<c-w>h', opt)
keymap.set('n', 'wj', '<C-w>j', opt)
keymap.set('n', 'wk', '<C-w>k', opt)
keymap.set('n', 'wl', '<C-w>l', opt)

-- 左右方向键控制窗口水平比例 Ctrl-左右方向键 小幅度移动
keymap.set('n', '<C-Left>', ':vertical resize -6<CR>', opt)
keymap.set('n', '<C-Right>', ':vertical resize +6<CR>', opt)
-- 上下方向控制窗口垂直比例  Ctrl-上下方向键 小幅度移动
keymap.set('n', '<C-Up>', ':resize -6<CR>', opt)
keymap.set('n', '<C-Down>', ':resize +6<CR>', opt)
-- 窗口等比例显示
keymap.set('n', '<C-=>', '<C-w>=', opt)

-- 切换buffer
keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>", opt)
keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>", opt)

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了
-- 查找文件
keymap.set('n', '<leader>p', ":Telescope find_files<CR>", opt)
--全局搜索 环境里需要按照riggrep
keymap.set('n', '<leader>f', ":Telescope live_grep<CR>", opt)
keymap.set('n', '<leader>b', ":Telescope buffers<CR>", opt)
keymap.set('n', '<leader>h', ":Telescope help_tags<CR>",opt)
