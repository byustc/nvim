-- lsp/nonels.lua
-- 即使是采用了 none-ls, 这里也是获取 null-ls
local nls_status_ok, null_ls = pcall(require, "null-ls")
if not nls_status_ok then
	vim.notify("null-ls loading failure")
	return
end

local formatters = null_ls.builtins.format

null_ls.setup({
    sources = {
        -- Stylua
        formatters.stylua,
        -- 其他 formatter 方式
    },
})

