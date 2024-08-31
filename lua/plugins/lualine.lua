local lline_status_ok, lualine = pcall(require, "lualine")
if not lline_status_ok then
    vim.notify("lualine loading failure")
    return
end


lualine.setup({
    options = {
        theme = 'tokyonight',
        component_separators = { left = "|", right = "|" },
        -- https://github.com/ryanoasis/powerline-extra-symbols
        section_separators = { left = " ", right = "" },
    },
    extensions = { "nvim-tree", "toggleterm" },
    sections = {
        lualine_c = {
            "filename",
        },
        lualine_x = {
            "filesize",
            {
                "fileformat",
                symbols = {
                    unix = '', -- e712
                    dos = '', -- e70f
                    mac = "", -- e711
                },
            },
            "encoding",
            "filetype",
        },
    },
})
