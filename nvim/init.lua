-- ~/.config/nvim/init.lua - Neovim configuration

-- Basic settings
vim.opt.number = true                    -- Show line numbers
vim.opt.relativenumber = true            -- Show relative line numbers
vim.opt.mouse = 'a'                      -- Enable mouse support
vim.opt.ignorecase = true                -- Ignore case in search
vim.opt.smartcase = true                 -- Override ignorecase if uppercase used
vim.opt.hlsearch = true                  -- Highlight search results
vim.opt.incsearch = true                 -- Incremental search
vim.opt.wrap = true                      -- Wrap lines
vim.opt.breakindent = true               -- Preserve indentation on wrapped lines
vim.opt.tabstop = 4                      -- Number of spaces per tab
vim.opt.shiftwidth = 4                   -- Number of spaces for autoindent
vim.opt.expandtab = true                 -- Convert tabs to spaces
vim.opt.autoindent = true                -- Copy indent from current line
vim.opt.smartindent = true               -- Smart autoindenting

-- Display settings
vim.opt.cursorline = true                -- Highlight current line
vim.opt.termguicolors = true             -- Enable 24-bit RGB colors
vim.opt.signcolumn = 'yes'               -- Always show sign column
vim.opt.showmatch = true                 -- Highlight matching brackets

-- Splits
vim.opt.splitbelow = true                -- Horizontal splits open below
vim.opt.splitright = true                -- Vertical splits open to right

-- Backups
vim.opt.backup = false                   -- Don't create backup files
vim.opt.swapfile = false                 -- Don't create swap files
vim.opt.writebackup = false              -- Don't create backup before overwriting

-- Clipboard
vim.opt.clipboard = 'unnamedplus'        -- Use system clipboard

-- Leader key
vim.g.mapleader = ' '                    -- Set leader key to space
vim.g.maplocalleader = ' '               -- Set local leader to space

-- Key mappings
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Clear search highlighting
keymap('n', '<leader><space>', ':nohlsearch<CR>', opts)

-- Navigate between splits
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Buffer navigation
keymap('n', '<leader>bn', ':bnext<CR>', opts)
keymap('n', '<leader>bp', ':bprevious<CR>', opts)
keymap('n', '<leader>bd', ':bdelete<CR>', opts)

-- Save and quit shortcuts
keymap('n', '<leader>w', ':w<CR>', opts)
keymap('n', '<leader>q', ':q<CR>', opts)
keymap('n', '<leader>x', ':x<CR>', opts)

-- File explorer
keymap('n', '<leader>e', ':Explore<CR>', opts)

-- Better indenting in visual mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move selected lines
keymap('v', 'J', ":m '>+1<CR>gv=gv", opts)
keymap('v', 'K', ":m '<-2<CR>gv=gv", opts)
