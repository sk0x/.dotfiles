return {
    {
        "L3MON4D3/LuaSnip",
        "mlaursen/vim-react-snippets",
        version = "v2.*",
        build = "make install_jsregexp",
        config = function ()
            require("vim-react-snippets").lazy_load()
        end
    }
}
