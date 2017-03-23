set nocompatible
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter' " visualize file changes
Plugin 'elzr/vim-json'
Plugin 'isRuslan/vim-es6'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
map <C-n> :NERDTreeToggle<CR>
filetype plugin indent on    " required
syntax enable

"" Colors
set t_Co=256
set background=dark

" Searching
set number
set hlsearch                 " highlight matches
set incsearch                " incremental searching
set ignorecase               " searches are case insensitive...
set smartcase                " ... unless they contain at least one capital letter
set mouse=a " Enable using the mouse if terminal emulator
set mousehide

" Whitespace
set nowrap                  " don't wrap lines
set tabstop=2 shiftwidth=2 "A tab is two spaces
set expandtab "use spaces not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set noswapfile

""Line numbers
set number
set guifont="Fira Code":18
let macvim_skip_colorscheme = 1
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.json setf javascript
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
au BufRead,BufNewFile *.less setf less
au BufRead,BufNewFile *.pp setf puppet
au BufRead,BufNewFile Gemfile setf ruby
au BufRead,BufNewFile Vagrantfile setf ruby

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Show matching brackets when text indicator is over them
set showmatch

" For regular expressions turn magic on #
" set magic

" Sets how many lines of history VIM has to remember
set history=10000

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Always show the status line
" set laststatus=2

" Fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ControlP should ignore certain directories by default
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git
