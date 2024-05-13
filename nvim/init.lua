  require('options')
  require('plugins')

  local map = vim.api.nvim_set_keymap

  local options = { noremap = true }

  map("v", "<leader>f", "<Plug>(coc-format-selected)", options)
  map("n", "<leader>f", "<Plug>(coc-format-selected)", options)

  vim.cmd([[
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv
  set number
  ]])
