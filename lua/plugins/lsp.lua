-- mason.lua
local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
    vim.notify("mason loading failure")
    return
end

local mlsp_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mlsp_status_ok then
    vim.notify("mason-lspconfig loading failure")
    return
end

local nlsp_status_ok, nvim_lsp = pcall(require, "lspconfig")
if not nlsp_status_ok then
    vim.notify("lspconfig loading failure")
    return
end

local cnlsp_stauts_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cnlsp_stauts_ok then
    vim.notify("cmp_nvim_lsp loading failure")
    return
end

local capabilities = cmp_nvim_lsp.default_capabilities()

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    -- 确保安装，根据需要填写
    ensure_installed = {
        "lua_ls",
        "gopls",
    },
})


nvim_lsp.lua_ls.setup {
    capabilities = capabilities,
}

nvim_lsp.gopls.setup {
    capabilities = capabilities,
}
