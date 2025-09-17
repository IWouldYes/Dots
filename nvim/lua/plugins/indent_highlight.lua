require("ibl").setup {
    indent = { char = "│" },
}

--change the color
vim.cmd [[
  highlight IndentBlanklineChar guifg=#5c5c5c gui=nocombine
  highlight IndentBlanklineContextChar guifg=#ff5c57 gui=nocombine
]]

