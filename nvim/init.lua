require 'core.options' require 'core.keymaps' -- Ensure syntax highlighting is enabled
vim.cmd("syntax on")

-- Enable true colors for better colorscheme support
vim.opt.termguicolors = true

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Plugin installation and configuration
require('lazy').setup({

    require('plugins.neotree'),
    require('plugins.treesitter'),
    require('plugins.colortheme'),
    require('plugins.bufferline'),
    require('plugins.lualine'),
    require('plugins.telescope'),
    require('plugins.lsp'),
    require('plugins.autocompletion'),
    require('plugins.gitsigns'),
    require('plugins.alpha'),
    require('plugins.indent-blankline'),
    require('plugins.misc'),
    require('plugins.none-ls'),
    require('plugins.chartgpt'),

})

