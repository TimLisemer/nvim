require("files.core")
require("files.lazy")

-- Keep the terminal background and not the colorscheme background
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd('hi EndOfBuffer guibg=NONE ctermbg=NONE')
vim.cmd('hi VertSplit guibg=NONE ctermbg=NONE')