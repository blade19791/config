-- ~/.config/nvim/lua/core/options.lua

vim.cmd('syntax on')

-- initializing zsh as adefault shell in Neovim
vim.opt.shell = '/bin/zsh'

-- Global options
vim.opt.number = true             -- Enable line numbers
vim.opt.relativenumber = true     -- Relative line numbers
vim.opt.tabstop = 4               -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4            -- Number of spaces for indentation
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.smartindent = true        -- Auto-indent new lines
vim.opt.softtabstop = 4           -- number of spaces that atab counts for while performing editting 
vim.opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim
vim.opt.wrap = false              -- Wrapping the code
vim.opt.linebreak = true          -- companion to wrap doesn't split words (default false)
vim.opt.autoindent = true         -- copy indent from the current line when startin a new one
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'               -- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.showmode = false          -- Don't show the mode, since it's already in the status line
vim.opt.breakindent = true        -- Enable break indent
vim.opt.undofile = true           -- Save undo history
vim.opt.signcolumn = 'yes'        -- Keep signcolumn on by default
vim.opt.updatetime = 250          -- Decrease update time
vim.opt.timeoutlen = 300          -- Decrease mapped sequence wait time -- Displays which-key popup sooner
vim.o.backup = false              -- Creates a backup file (default: false)
vim.o.writebackup = false         -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.o.swapfile = false            -- Creates a swapfile (default: true)
vim.o.showmode = false            -- We don't need to see things like -- INSERT -- anymore (default: true)
vim.opt.termguicolors = true      -- Set termguicolors to enable highlight groups (default: false)
vim.o.numberwidth = 4             -- Set number column width to 2 {default 4} (default: 4)
vim.o.showtabline = 2             -- Always show tabs (default: 1)
vim.o.fileencoding = 'utf-8'      -- The encoding written to a file (default: 'utf-8')
vim.o.cmdheight = 1               -- More space in the Neovim command line for displaying messages (default: 1)
vim.opt.runtimepath:remove '/usr/share/vim/vimfiles'          -- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)


-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true



return {}

