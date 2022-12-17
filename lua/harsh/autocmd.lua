local cmd = vim.api.nvim_create_autocmd
local group = vim.api.nvim_create_augroup
local home = os.getenv("HOME")

local highlight_group = group('YankHighlight', { clear = true })
local packer_group = group('Packer', { clear = true })

cmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

cmd('BufWritePost', {
  command = 'source <afile> | PackerSync',
  group = packer_group,
  pattern = vim.fn.expand(home .. "/.config/nvim/lua/harsh/packer.lua")
})
