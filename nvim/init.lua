--plugins init
local plugin_path = vim.fn.stdpath("config") .. "/lua/plugins/"

for _, file in ipairs(vim.fn.glob(plugin_path .. "*.lua", true, true)) do
  local module = "plugins." .. vim.fn.fnamemodify(file, ":t:r")
  pcall(require, module)
end



--use system clipboard
vim.opt.clipboard = "unnamedplus"

--highlight yanked text
vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function() vim.highlight.on_yank() end,
})





--tab switching
for i = 1, 9 do
  vim.api.nvim_set_keymap('n', '<A-'..i..'>', i..'gt', { noremap = true, silent = true })
end

--line numbers
vim.opt.number = true  


--tab = 3 space
vim.opt.expandtab = true
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.softtabstop = 3

--lspxxdxdxdxd
vim.lsp.enable('pyright')
