-- Treesitter configuration
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "bash", "java", "html", "css", "javascript", "python", "css" }, -- Add your commonly used languages
            highlight = {
                enable = true, -- Enable syntax highlighting
            },
            indent = {
                enable = true, -- Enable indenting
            },
        })
    end,
}

