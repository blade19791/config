
-- Catppuccin colorscheme setup
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("catppuccin") -- Set the colorscheme
    end,
}

