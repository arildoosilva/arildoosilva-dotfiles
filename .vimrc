" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

<<<<<<< HEAD:vimrc
" Enhanced tab completion
set wildmenu
=======
" File types
filetype on
filetype plugin on
filetype indent on
>>>>>>> d81d515d17edff62ac69be414db2ad300216f858:.vimrc

" Reload files changed outside of vim
set autoread

" Set encoding to UTF-8
set encoding=utf-8
set fileencoding=utf-8

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2  " make backspace behave like normal again

" Rebind <Leader> key
let mapleader = ","

" Quicksave command (F5)
noremap <F5> :update<CR>
vnoremap <F5> <C-C>:update<CR>
inoremap <F5> <C-O>:update<CR>

" Bind CTRL+<movement> keys to move around the windows, instead of using CTRL+W + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Map SORT function to a key
vnoremap <Leader>s :sort<CR>

" Indent selection (< and >)
vnoremap < <gv 
vnoremap > >gv

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set number " show line numbers
set tw=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Easier formatting of paragraphs with Q
vmap Q gq
nmap Q gqap

" Useful settings
" set history=700
" set undolevels=700

" Indent with spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Setup Pathogen to manage your plugins 
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim
" https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()
<<<<<<< HEAD:vimrc
call pathogen#helptags()
=======
>>>>>>> d81d515d17edff62ac69be414db2ad300216f858:.vimrc

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone https://github.com/Lokaltog/vim-powerline.git
<<<<<<< HEAD:vimrc
" set laststatus=2
=======
set laststatus=2
>>>>>>> d81d515d17edff62ac69be414db2ad300216f858:.vimrc

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
<<<<<<< HEAD:vimrc
" let g:ctrlp_max_height = 30
" set wildignore+=*.pyc
" set wildignore+=*_build/*
" set wildignore+=*/coverage/*
=======
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
>>>>>>> d81d515d17edff62ac69be414db2ad300216f858:.vimrc

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone https://github.com/davidhalter/jedi-vim.git
<<<<<<< HEAD:vimrc
" let g:jedi#usages_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
" set completeopt=longest,menuone
" function! OmniPopup(action)
"     if pumvisible()
"         if a:action == 'j'
"             return "\<C-N>"
"         elseif a:action == 'k'
"             return "\<C-P>"
"         endif
"     endif
"     return a:action
" endfunction

" inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
" inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>
=======
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>
>>>>>>> d81d515d17edff62ac69be414db2ad300216f858:.vimrc

" Python folding mkdir -p ~/.vim/ftplugin wget -O
" ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
<<<<<<< HEAD:vimrc
" set nofoldenable
=======
set nofoldenable
>>>>>>> d81d515d17edff62ac69be414db2ad300216f858:.vimrc

" Surround
" Surround.vim is all about surrounding sparentheses, brackets, quotes, XML
" tags, and more. The plugin provides mappings to easily delete, change and 
" add such surroundings in pairs.
" Press ysstdiv> to envelop the line <div></div> tags
" Press yss" to envelop the line in quotes
" cd ~/.vim/bundle
" git clone http://github.com/tpope/vim-surround.git

" Emmet
" git clone https://github.com/mattn/emmet-vim.git
" https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
" type html:5 (insert mode) and press <CTRL-Y ,> to insert html base code
" type the abbreviation as 'div>p#foo$*3>a' and type '<c-y>,' to convert to
" code
