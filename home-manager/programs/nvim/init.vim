let mapleader = "\<Space>"
map <Space> <Nop>

nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>

let g:telescope_fzf_options = {
      \ 'fzf_bin': 'fzf',
      \ 'fzf_layout': 'reverse-list',
      \ }
