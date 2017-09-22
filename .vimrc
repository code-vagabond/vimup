set nocompatible              " be iMproved, required                                                                                                                                                                
filetype off                  " required                                                                                                                                                                             
                                                                                                                                                                                                                     
" set the runtime path to include Vundle and initialize                                                                                                                                                              
set rtp+=~/.vim/bundle/Vundle.vim                                                                                                                                                                                    
call vundle#begin()                                                                                                                                                                                                  
" alternatively, pass a path where Vundle should install plugins                                                                                                                                                     
"call vundle#begin('~/some/path/here')                                                                                                                                                                               
                                                                                                                                                                                                                     
" let Vundle manage Vundle, required                                                                                                                                                                                 
Plugin 'VundleVim/Vundle.vim'                                                                                                                                                                                        
                                                                                                                                                                                                                     
" The following are examples of different formats supported.                                                                                                                                                         
" Keep Plugin commands between vundle#begin/end.                                                                                                                                                                     
" plugin on GitHub repo                                                                                                                                                                                              
Plugin 'tpope/vim-fugitive'                                                                                                                                                                                          
" plugin from http://vim-scripts.org/vim/scripts.html                                                                                                                                                                
" Plugin 'L9'                                                                                                                                                                                                        
" Git plugin not hosted on GitHub                                                                                                                                                                                    
Plugin 'git://git.wincent.com/command-t.git'                                                                                                                                                                         
" git repos on your local machine (i.e. when working on your own plugin)                                                                                                                                             
"Plugin 'file:///home/gmarik/path/to/plugin'                                                                                                                                                                         
" The sparkup vim script is in a subdirectory of this repo called vim.                                                                                                                                               
" Pass the path to set the runtimepath properly.                                                                                                                                                                     
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}                                                                                                                                                                           
" Install L9 and avoid a Naming conflict if you've already installed a                                                                                                                                               
" different version somewhere else.                                                                                                                                                                                  
" Plugin 'ascenator/L9', {'name': 'newL9'}

"Ctr+P file search
Plugin 'kien/ctrlp.vim'


                                                                                                                                                                                                                     
" All of your Plugins must be added before the following line                                                                                                                                                        
call vundle#end()            " required                                                                                                                                                                              
filetype plugin indent on    " required                                                                                                                                                                              
" To ignore plugin indent changes, instead use:                                                                                                                                                                      
"filetype plugin on                                                                                                                                                                                                  
"                                                                                                                                                                                                                    
" Brief help                                                                                                                                                                                                         
" :PluginList       - lists configured plugins                                                                                                                                                                       
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate                                                                                                                                   
" :PluginSearch foo - searches for foo; append `!` to refresh local cache                                                                                                                                            
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal                                                                                                                         
"                                                                                                                                                                                                                    
" see :h vundle for more details or wiki for FAQ                                                                                                                                                                     
" Put your non-Plugin stuff after this line                                                                                                                                                                          
                                                                                                                                                                                                                     
                                                                                                                                                                                                                     
                                                                                                                                                                                                                     
                                                                                                                                                                                                                     
" sensible.vim - Defaults everyone can agree on                                                                                                                                                                      
" Maintainer:   Tim Pope <http://tpo.pe/>                                                                                                                                                                            
" Version:      1.1                                                                                                                                                                                                  
                                                                                                                                                                                                                     
if exists('g:loaded_sensible') || &compatible                                                                                                                                                                        
  finish                                                                                                                                                                                                             
else 
  let g:loaded_sensible = 'yes'                                                                                                                                                                                      
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
if has('autocmd')                                                                                                                                                                                                    
  filetype plugin indent on                                                                                                                                                                                          
endif                                                                                                                                                                                                                
if has('syntax') && !exists('g:syntax_on')                                                                                                                                                                           
  syntax enable                                                                                                                                                                                                      
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
" Use :help 'option' to see the documentation for the given option.                                                                                                                                                  
                                                                                                                                                                                                                     
set autoindent                                                                                                                                                                                                       
set backspace=indent,eol,start                                                                                                                                                                                       
set complete-=i                                                                                                                                                                                                      
set smarttab                                                                                                                                                                                                         
                                                                                                                                                                                                                     
set nrformats-=octal                                                                                                                                                                                                 
                                                                                                                                                                                                                     
if !has('nvim') && &ttimeoutlen == -1                                                                                                                                                                                
  set ttimeout                                                                                                                                                                                                       
  set ttimeoutlen=100                                                                                                                                                                                                
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
set incsearch                                                                                                                                                                                                        
" Use <C-L> to clear the highlighting of :set hlsearch.                                                                                                                                                              
if maparg('<C-L>', 'n') ==# ''                                                                                                                                                                                       
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>                                                                                                                             
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
set laststatus=2                                                                                                                                                                                                     
set ruler                                                                                                                                                                                                            
set wildmenu                                                                                                                                                                                                         
                                                                                                                                                                                                                     
if !&scrolloff                                                                                                                                                                                                       
  set scrolloff=1                                                                                                                                                                                                    
endif                                                                                                                                                                                                                
if !&sidescrolloff                                                                                                                                                                                                   
  set sidescrolloff=5                                                                                                                                                                                                
endif                                                                                                                                                                                                                
set display+=lastline                                                                                                                                                                                                
                                                                                                                                                                                                                     
if &encoding ==# 'latin1' && has('gui_running')                                                                                                                                                                      
  set encoding=utf-8                                                                                                                                                                                                 
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
if &listchars ==# 'eol:$'                                                                                                                                                                                            
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+                                                                                                                                                          
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
if v:version > 703 || v:version == 703 && has("patch541")                                                                                                                                                            
  set formatoptions+=j " Delete comment character when joining commented lines                                                                                                                                       
endif    
                                                                                                                                                                                                                     
if has('path_extra')                                                                                                                                                                                                 
  setglobal tags-=./tags tags-=./tags; tags^=./tags;                                                                                                                                                                 
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))                                                                                                                                   
  set shell=/bin/bash                                                                                                                                                                                                
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
set autoread                                                                                                                                                                                                         
                                                                                                                                                                                                                     
if &history < 1000                                                                                                                                                                                                   
  set history=1000                                                                                                                                                                                                   
endif                                                                                                                                                                                                                
if &tabpagemax < 50                                                                                                                                                                                                  
  set tabpagemax=50                                                                                                                                                                                                  
endif                                                                                                                                                                                                                
if !empty(&viminfo)                                                                                                                                                                                                  
  set viminfo^=!                                                                                                                                                                                                     
endif                                                                                                                                                                                                                
set sessionoptions-=options                                                                                                                                                                                          
                                                                                                                                                                                                                     
" Allow color schemes to do bright colors without forcing bold.                                                                                                                                                      
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'                                                                                                                                                                          
  set t_Co=16                                                                                                                                                                                                        
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
" Load matchit.vim, but only if the user hasn't installed a newer version.                                                                                                                                           
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''                                                                                                                                        
  runtime! macros/matchit.vim                                                                                                                                                                                        
endif                                                                                                                                                                                                                
                                                                                                                                                                                                                     
inoremap <C-U> <C-G>u<C-U>                                                                                                                                                                                           
                                                                                                                                                                                                                     
                                                                                                                                                                                                                     
Plugin 'vim-airline/vim-airline'                                                                                                                                                                                     
Plugin 'vim-airline/vim-airline-themes'                                                                                                                                                                              
let g:airline#extensions#tabline#enabled = 1                                                                                                                                                                         


"colorscheme molokai
"let g:molokai_original=1   

 Bundle 'https://github.com/freeo/vim-kalisi'

 colorscheme kalisi
 set background=dark
 "and then in vim type :BundleInstall


" vim:set ft=vim et sw=2:                                                                                                                                                                                            
                                                                                                                                                                                                                     
                                                                                                                                                                                                                     
                                                                                                                                                                                                                     
set number                                                                                                                                                                                                                     
                                                                                                                                                                                                                     
