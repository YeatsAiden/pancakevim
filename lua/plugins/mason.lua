local plugins = { "mason", "lspconfig", "cmp_nvim_lsp", "mason-lspconfig" }

for _, plugin in ipairs(plugins) do
    local ok, mod = pcall(require, plugin)
    if not ok then
        return
    end
end

local servers = { "lua_ls", "rust_analyzer", "clangd", "pyright" }

local mason = require("mason")
mason.setup()

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup {
    automatic_enable = false,
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "clangd" },
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        capabilities = capabilities,
    })
end


