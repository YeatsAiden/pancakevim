local options = {
    number = true,                 -- line numbers
	relativenumber = true,         -- relative line numbers
	hlsearch = true,              -- highlight previous search
	termguicolors = true,          -- allow terminal colors
	cursorline = true,             -- cursor line
	splitbelow = true,             -- make any new vertical split be below
	splitright = true,             -- make any new horizontal split be on the right
	wrap = false,                  -- wrap text
	tabstop = 4,                   --] force tabs to be 4 spaces
    softtabstop = 4,               --]
	shiftwidth = 4,                --]
	expandtab = true,              -- make tabs expand into spaces
	clipboard = "unnamedplus",     -- share the system clip board
	scrolloff = 15,                -- force to scroll n amount of lines before cursor reaches the bottom or top of window
	virtualedit = "block",         -- makes visual block mode 'better' 
	inccommand = "split",          -- shows all lines affected by replace command
	ignorecase = true,             -- ignores case sensetive stuff
	swapfile = false,              -- no swap file (you don't want this if you use git hub)
    signcolumn = 'yes',            -- for preventing weird formatting issues with lsp
    undofile = true,               -- makes a file for undo history
    undodir = os.getenv("HOME") .. "./vim/undodir/" -- dir where undo file is stored
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
