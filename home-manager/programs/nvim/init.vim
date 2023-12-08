let mapleader = "\<Space>"
map <Space> <Nop>

inoremap <expr> <C-e> "$a"

" Telescope
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>

let g:telescope_fzf_options = {
      \ 'fzf_bin': 'fzf',
      \ 'fzf_layout': 'reverse-list',
      \ }

" Coc
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <C-j> pumvisible() ? "\<C-y>\<C-\>\<C-o>:normal! \<C-C>\<CR>" : "\<C-j>"

" CHADtree
nnoremap <silent><C-n> :CHADopen<CR>

" Set tab width to 2 spaces and use spaces instead of tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
