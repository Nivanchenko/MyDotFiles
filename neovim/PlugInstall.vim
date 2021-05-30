call plug#begin(plugspath)

    Plug 'itchyny/lightline.vim'
    Plug 'vim-scripts/delimitMate.vim'
"    Plug 'neoclide/coc.nvim'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'vifm/vifm.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'andreevlex/vim-language-1c-bsl'
    Plug 'majutsushi/tagbar'          	            
    Plug 'garbas/vim-snipmate'		                
    Plug 'MarcWeber/vim-addon-mw-utils'	            
    Plug 'tomtom/tlib_vim'
    Plug 'puremourning/vimspector'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'morhetz/gruvbox'
    " MarkDown support
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    "Experemental
    "Plug 'hrsh7th/nvim-compe'

call plug#end()
