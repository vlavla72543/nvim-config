set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8
set cc=80

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'https://github.com/vbe0201/vimdiscord.git'
Plug 'https://github.com/neovim/nvim-lspconfig.git'
Plug 'https://github.com/kassio/neoterm.git'
Plug 'https://github.com/ms-jpq/coq_nvim.git'
Plug 'https://github.com/ms-jpq/coq.artifacts.git'
Plug 'https://github.com/ms-jpq/coq.thirdparty.git'

call plug#end()

"theme
source ~/.local/share/nvim/plugged/awesome-vim-colorschemes/colors/OceanicNext.vim

"lsp
lua require('lspconfig').pyright.setup{require('coq').lsp_ensure_capabilities{}}
lua require('lspconfig').ccls.setup{require('coq').lsp_ensure_capabilities{}}
lua require('lspconfig').clangd.setup{require('coq').lsp_ensure_capabilities{}}

exec 'COQnow'

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-s> :TagbarToggle<CR>
nnoremap h <left>
nnoremap t <down>
nnoremap n <up>
nnoremap s <right>
inoremap htn <esc>

