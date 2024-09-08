local local_plugins = {
    {
        "vim-apm", dir = "~/personal/.nvim-plugins/vim-apm",
        config = function()
            --[[
            local apm = require("vim-apm")

            apm:setup({})
            vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
            --]]
        end
    },
}

return local_plugins
