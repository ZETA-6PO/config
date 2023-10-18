syntax on
set termguicolors
set number
set colorcolumn=80
filetype plugin indent on
nnoremap <Leader>ncc :set colorcolumn-=80<cr>
nnoremap <Leader>= :vertical resize +5<cr>
nnoremap <Leader>- :vertical resize -5<cr>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap 'l <Esc>la
vnoremap <C-c> "*+y
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
map <C-J> :bnext!<CR>
map <C-K> :bprev!<CR>
map <C-Q> :bd<CR>
map <C-S> :w<CR>
let g:airline_section_b = '%{getcwd()}' " in section B of the status line 
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
set clipboard=unnamedplus

let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
set tabstop=4
set shiftwidth=0
set listchars=tab:>-,trail:.,extends:\#,nbsp:.,
set list

"FUCK CAPS LOCK
au InsertLeave * call TurnOffCaps()
function TurnOffCaps()  
    let capsState = matchstr(system('xset -q'), '00: Caps Lock:\s\+\zs\(on\|off\)\ze')
    if capsState == 'on'
        silent! execute ':!xdotool key Caps_Lock'
    endif
endfunction


call plug#begin()
" Unmanaged plugin (manually installed and updated)

Plug 'vim-airline/vim-airline'
Plug 'sainnhe/edge'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
colorscheme edge
