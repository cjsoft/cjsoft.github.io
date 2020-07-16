" let mapleader=","
set guifont=ubuntu\ mono\ for\ powerline:h18
syntax on
set expandtab
" set clipboard=unnamed
set number 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set background=dark
set backspace=eol,indent,start
set laststatus=2
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set smartindent
set foldmethod=syntax
set nofoldenable
let g:neocomplete#enable_at_startup = 1
let g:NERDSpaceDelims=1
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
" set encoding=utf-8
" Plugin key-mappings.
imap <C-Tab>     <Plug>(neosnippet_expand_or_jump)
smap <C-Tab>     <Plug>(neosnippet_expand_or_jump)
xmap <C-Tab>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" There was a "?" downhere                           V
smap <expr><TAB> neosnippet#expandable_or_jumpable()
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/my-snippets/snippets'

" -------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-commenter'
Plugin 'markdown'
Plugin 'JSON.vim'
Plugin 'python.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Konfekt/FastFold'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
call vundle#end()            " required
filetype plugin indent on    " required


" --------------------------------

set fileencodings=utf-8,gbk,gb18030,gk2312
if has("gui_running")
    set encoding=utf-8
    colo darkblue
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif
