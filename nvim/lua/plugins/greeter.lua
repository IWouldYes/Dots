--catpuccin mocha
require("catppuccin").setup({
    flavour = "mocha",
    integrations = { 
	cmp = true,
	gitsigns = true,
	telescope = true,
	alpha = true
    }
})

vim.cmd("colorscheme catppuccin")




local ascii = require("ascii")
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")


--dashboard.section.header.val = ascii.art.text.neovim.sharp

dashboard.section.header.val  = {
	[[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
}


dashboard.section.buttons.val = {
  dashboard.button("e", " New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("f", " File explorer", ":NvimTreeOpen<CR>"),
  dashboard.button("c", " Config neovim", ":NvimTreeOpen $HOME/.config/nvim/<CR>"),
  dashboard.button("q", "󰈆 Quit", ":qa<CR>"),
}

local cp = require("catppuccin.palettes").get_palette()
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = cp.blue })
vim.api.nvim_set_hl(0, "DashboardButtons", { fg = cp.sapphire })

dashboard.section.header.opts.hl = "DashboardHeader"

--painter
local buttons = dashboard.section.buttons.val
for _, b in ipairs(buttons) do
    b.opts.hl = "DashboardButtons"
end




alpha.setup(dashboard.opts)

