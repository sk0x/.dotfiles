return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensured_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "tsserver"
                }
            })
        end
    }
}

