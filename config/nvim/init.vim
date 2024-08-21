" Plugins
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-sensible'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'girishji/autosuggest.vim'
Plug 'junegunn/limelight.vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'

call plug#end()

" Visual
let g:airline_theme='angr'                              " tema da barra
colorscheme codedark                                    " tema de fundo
let g:limelight_default_coefficient = 0.3               " contraste no parágrafo selecionado (ñ funciona)
let g:limelight_paragraph_span = 0                      " contraste nos n parágrafo anterior e posterior
let g:limelight_conceal_ctermfg = 240                   " cor do contraste = 37 (Branco em ASCI)
let g:limelight_priority = -1                           " prioridade abaixo do hlsearch

"Key binds
let mapleader = '\'                                     " leader key para comandos personalizados 
let g:goyo_width = 120
let g:goyo_height = 150
autocmd! User GoyoEnter Limelight                       " sempre que entrar no goyo, liga o limelight
autocmd! User GoyoLeave Limelight!                      " sempre que sair do goyo, desliga o limelight

" Geral
set nocompatible                                        " desativar compatibilidade com o vi
set showmatch                                           " mostrar matching 
set ignorecase                                          " insensível a maiúsculas 
set mouse=v                                             " paste com o botão do meio do rato 
set hlsearch                                            " pesquisas com highlight 
set incsearch                                           " ??
set tabstop=4                                           " tamanho de um tab 
set softtabstop=4                                       " ^
set expandtab                                           " tabs são apenas espaço
set shiftwidth=4                                        " tamanho para indentação automática
set autoindent                                          " indentar uma linha nova
set number                                              " números de linha
set wildmenu                                            " completação
set wildmode=longest,list                               " completação
filetype plugin indent on                               " permitir indentação automática
syntax on                                               " tá no nome
set mouse=a                                             " ativa cliques de rato
set clipboard=unnamedplus                               " usa a clipboard do sistema
filetype plugin on                                      " permite o uso de plugins
set cursorline                                          " adiciona uma minha na linha onde o cursor está
set ttyfast                                             " scroll rápido
set noswapfile                                          " desativa swap
let NERDTreeShowHidden=1                                "deixa o nerdtree ver ficheiros ocultos

"Spellcheck e Auto Completion 
set spell                                               " ativar spell checking
set spell spelllang=pt,en_us
set sps=10                                              " numero de sugestões na lista de correções (z-=)
let spell_auto_type="tex,txt,doc,mail"                  " define os tipos de documentos

