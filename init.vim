set number	
set linebreak
set showbreak=+++	
set textwidth=100
set showmatch	
set visualbell
set noswapfile 
set hlsearch
set smartcase	
set ignorecase
set incsearch
 
set autoindent	
set expandtab
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4	
     

set ruler	
 
set undolevels=1000	
set backspace=indent,eol,start	
let mapleader = ","

if (has("termguicolors"))
 set termguicolors
endif

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'jacoborus/tender'
Plug 'jlanzarotta/bufexplorer'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'vim-airline/vim-airline'
call plug#end()

"Syntax and colorscheme
syntax enable
colorscheme tender

"php-cs-fixer
let g:php_cs_fixer_level = "psr2"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
"let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information. 

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_php_checkers=['phpcs', 'php']
let g:syntastic_php_phpcs_exec='~/.composer/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 0
