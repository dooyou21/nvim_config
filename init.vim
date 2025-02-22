set encoding=UTF-8
syntax on
set number
set ruler
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard=unnamed " use OS clipboard

autocmd FileType typescript,typescriptreact,javascript,javascriptreact,html,xml,svg,css setlocal shiftwidth=2 tabstop=2 expandtab

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.config/nvim/after')
" Plug in lists

" Language Server Protocol(LSP) for nvim
Plug 'neovim/nvim-lspconfig'

" Auto-Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NerdTree & Tagbar
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'

" NERDTree Devicons
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

" Neogit, Diffview.nvim
Plug 'NeogitOrg/neogit'
Plug 'sindrets/diffview.nvim'

" Up - Tab Bar
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" nightfox color scheme
Plug 'EdenEast/nightfox.nvim'

call plug#end()

colorscheme carbonfox

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

lua require('plugins/lualine')
lua require('plugins/telescope')
lua require('plugins/lsp')
lua require('plugins/coc')

