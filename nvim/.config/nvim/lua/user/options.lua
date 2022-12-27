-- :help options
local o = vim.opt

-- Editor configuration --
o.fileencoding = "utf-8"                  -- encoding written to new files
o.mouse = "a"                             -- allow mouse to be used in neovim
o.undofile = true                         -- save undo history to file, restore from the file
o.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
o.allowrevins = false                     -- allow reverse insert mode using CTRL-_ in insert/cmd mode
o.autochdir = false                       -- automatically change directory to current opened file dir
-- o.browsedir = "current"                   -- where to start file browser (default "last" file browser saved)
o.conceallevel = 0                        -- shows `` in markdown files
vim.cmd "set whichwrap+=<,>,[,],h,l"      -- allow characters to move to previous/next line
vim.cmd [[set iskeyword+=-]]              -- treat - separated words as single words

-- Editor appearance --
o.guifont = "monospace:h17"               -- set font used in graphical neovim sessions
o.termguicolors = true                    -- enable 24-bit RGB color in TUI
o.cursorline = true                       -- shows cursor line
o.scrolloff = 8                           -- minimal number of lines to keep above and below cursor, for context
o.sidescrolloff = 8                       -- minimal number of lines to keep at the sides of the cursor
o.cmdheight = 2				                    -- more space for command line
o.showmode = true                         -- shows mode in the last line
o.showtabline = 2                         -- show tabs line
o.pumheight = 10                          -- max number of objects in pop-up menu
o.signcolumn = "yes"                      -- always show the signcolumn

-- Line numbers --
o.number = true                           -- show line numbers
o.relativenumber = false                  -- show relative numbers (o.number must be off)
o.numberwidth = 4                         -- set minimal width of line numbers column (default 4)

-- Autocompletion --
o.completeopt = { "menuone", "noselect" } -- options for automatic completion
o.updatetime = 300                        -- faster completion (default 4000ms)
o.shortmess:append "c"                    -- no ins-completion-menu messages

-- Search patterns --
o.smartcase = true                        -- override ignorecase if search pattern contains uppercase characters
o.ignorecase = true                       -- ignore case in search patterns
o.hlsearch = true                         -- highlight matches from search patterns

-- Clipboard -- 
o.clipboard = "unnamedplus"		            -- use system clipboard to copy from outside

-- Tabbing -- 
o.shiftwidth = 2                          -- number of spaces inserted for indentation
o.tabstop = 2                             -- number of spaces corresponding to a tab
o.expandtab = true                        -- convert tabs to spaces
o.smartindent = true                      -- smart autoindent when starting a new line

-- Window splitting --
o.splitbelow = true                       -- force to always split below
o.splitright = true                       -- force to always split right

-- Autosave / Recovery
o.swapfile = false                        -- do not use swapfile for the buffer (keep in mem, no recovery)
o.backup = false                	        -- creates backup before overwriting file
-- o.backupext = ".bak"                      -- string to append to backup files (default "~")

