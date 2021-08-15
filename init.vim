"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"𝕓𝕪 𝕁𝕠𝕒𝕢𝕦𝕚𝕟 𝕍𝕒𝕣𝕖𝕝𝕒 𝕐𝕋               
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A					    

"---------------------------------vim config---------------------------- 
syntax on 
set number 
set mouse=a
set expandtab
set smartindent
set nowrap
set cursorline
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
"defino la tecla leader
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set colorcolumn=120

"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l

"mueve bloques de codigo en modo visual o V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Sources-------------------------------
source ~/AppData/Local/nvim/plugins/plugins.vim
source ~/AppData/Local/nvim/plugins/plug-config.vim
source ~/AppData/Local/nvim/themes/onedark.vim
"--------------------------------Plugins Config--------------------------------------------

"recarga las configuraciones
nmap <F5> :source ~/AppData/Local/nvim/init.vim<CR>
vmap <F5> :source ~/AppData/Local/nvim/init.vim<CR>

"en modo normal no funcionan las teclas
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"guardar archivo
nmap <leader>w :w <CR>

"cerrar ventana
nmap <leader>q :q <CR>

"agranda/achica buffer horizontal y vertical 
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

vnoremap <c-t> :split<CR>:ter<CR>
nnoremap <c-t> :split<CR>:ter<CR>

"Moverse al buffer siguiente con leader + k
nnoremap <leader>k :bnext<CR>

"Moverse al buffer anterior con leader + j
nnoremap <leader>j :bprevious<CR>

"cerrar el buffer actual con leader + q
nnoremap <leader>Q :bdelete<CR>

"crear una nueva ventana
nnoremap <leader>t :tabe<CR>

"hacer un split vertical
nnoremap <leader>vs :vsp<CR>

"comandos de busqueda 
nmap <leader>gs  :CocSearch 
nmap <leader>fs :FZF<CR> 
nmap <leader>rg :Rg<CR> 
"configuracion de tabs 
let g:indentLine_enabled = 1 
let g:indentLine_char = ''
let g:indentLine_faster = 1 
let g:indentLine_fileTypeExclude=["nerdtree"]

"abrir Nerdtree 
nmap <Leader>nt :NERDTree<CR> 

"nerdtree muestra los archivos ocultos 
let NERDTreeShowHidden= 1 

"configuracion para kite, autocompletado para todos los lenguajes
let g:kite_supported_languages = ['javascript', 'python']

"atajos y configuracion para coc 
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@ 

"Use <C-space> to trigger completion
"Usar <C-space> para mostrar las opciones de completado
if &filetype == 'javascript' || &filetype == 'python'
  inoremap <C-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

nmap <silent> gd <Plug> (coc-definition) 
nmap <silent> gy <Plug> (coc-type-definition) 
nmap <silent> gi <Plug> (coc-implementation) 
nmap <silent> gr <Plug> (coc-references) 

"Buscar dos carácteres con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>


"--gruvbox config--
"colorscheme onedark
"let g:gruvbox_contrast_dark = "medium"

set cmdheight=1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
colorscheme tokyonight
"Close tags automatically
"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'
"-----------------------------------------------------------------

