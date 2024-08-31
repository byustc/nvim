vim.opt.termguicolors = true

local bline_status_ok, bline = pcall(require, "bufferline")
if not bline_status_ok then
    vim.notify("bufferline loading failure")
    return
end

bline.setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        indicator = {
            icon = '▎', -- 分割线
            style = 'underline',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        -- 左侧让出 nvim-tree 的位置
        offsets = { {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        } }
    }
}
