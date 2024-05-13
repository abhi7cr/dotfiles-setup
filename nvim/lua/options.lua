  vim.opt.shiftwidth = 2
  vim.opt.tabstop = 2
  vim.opt.signcolumn = "auto"
  vim.opt.spell = false
  vim.opt.wrap = false
  vim.opt.number = true

  local map = vim.api.nvim_set_keymap

  local opts = { noremap = true }

  map("v", "<leader>f", "<Plug>(coc-format-selected)", opts)
  map("n", "<leader>f", "<Plug>(coc-format-selected)", opts)

  vim.cmd([[
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv
  ]])
