"call pathogen#incubate()
execute pathogen#infect()
syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set cursorline cursorcolumn

set t_Co=256
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols_override = {
         \ 'BRANCH': 'ψ',
         \ 'LINE': '↳',
         \ }

let mapleader = ","
hi def link gitcommitSummary Normal
hi def link gitcommitBlank Normal

map <D-A-Right> :tabn<CR>
map <D-A-Left>  :tabp<CR>

inoremap jk <esc>

" easier window switching mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" swap left and right splits
nnoremap <C-x> <C-w>x

" window resizing
nmap <C-left>  :3wincmd <<cr>
nmap <C-right> :3wincmd ><cr>
nmap <C-up>    :3wincmd -<cr>
nmap <C-down>  :3wincmd +<cr>

"fast saving
nnoremap <leader>w :w!<cr>

" NERDTree shortcuts
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
" remove NERDTree 'Press ? for help' message
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" CtrlP mappings
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" autosave
autocmd FocusLost,BufLeave,TextChanged,TextChangedI * silent wall

" filetype specific settings settings
augroup indent_and_whitespace_group
  autocmd!
  autocmd FileType coffee setlocal ts=2 sw=2 expandtab number
  autocmd FileType html setlocal ts=2 sw=2 expandtab number
  autocmd FileType java setlocal ts=4 sw=4 expandtab number
  autocmd FileType javascript setlocal ts=2 sw=2 expandtab number
  autocmd FileType mustache setlocal ts=2 sw=2 expandtab number
  autocmd FileType php setlocal ts=4 sw=4 expandtab number
  autocmd FileType ruby setlocal ts=2 sw=2 expandtab number
  autocmd FileType vim setlocal ts=2 sw=2 foldmethod=marker
augroup END

"strip trailing whitespace on save for certain files
"(add more file types seperated by commas)
autocmd FileType ruby,js,haml,coffee autocmd BufWritePre <buffer> :%s/\s\+$//e

"manually remove trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>


set guifont=Menlo:h14
set number
set hlsearch
set incsearch   " find as you type search
set ignorecase  " case insensitive search
set smartcase   " case sensitive when uc present
set wildmenu    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all
set scrolloff=3 " lines to scroll when cursor leaves screen

set laststatus=2
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"set nocompatible


"" highlight characters in lines that are over 150 chars long
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%151v.\+/
"
augroup vimrc_autocmds
  autocmd BufEnter *.rb highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  autocmd BufEnter *.rb match OverLength /\%151v.\+/
augroup END

" ================= Turn Off Swap Files ==================
set noswapfile
set nobackup
set nowb
:nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

set nowrap "don't wrap lines
set linebreak "wrap lines at convenient places

"from within curly braces, insert a new line and indent
inoremap <C-Return> <CR><CR><C-o>k<Tab>

"treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

nnoremap <leader>at :AlternateToggle<cr>
nnoremap <leader>av :AlternateVerticalSplit<cr>
nnoremap <leader>as :AlternateHorizontalSplit<cr>

" open splits to the right and bottom
set splitbelow
set splitright

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <leader>cf :let @* = expand("%:~")<CR>
nnoremap <silent> <leader>cn :let @* = expand("%:t")<CR>

"YankRing shortcut
nnoremap <leader>yr :YRShow<cr>

"return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :noh<cr>

" Put swap files in ~/tmp/.vim
set backupdir=~/tmp/.vim
set directory=~/tmp/.vim

" H should go to beginning of line, L to the end
nnoremap <leader>H ^
nnoremap <leader>L g_

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let link_to image_tag
highlight def link rubyRspec Function

"set nowrap "don't wrap lines
set linebreak "wrap lines at convenient places

" vim-rspec mappings
nnoremap <Leader>r :call RunCurrentSpecFile()<CR>
nnoremap <Leader>l :call RunNearestSpec()<CR>
nnoremap <Leader>p :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm2"

"have Ack use Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" map switching window split
nnoremap <Leader>wr <C-W>R<CR>
" map extracting current out to tab
nnoremap <Leader>wt <C-W>T<CR>
" map closing all but current window in tabview
nnoremap <Leader>wo <C-W>o<CR>

" map leader gt to toggle Git Gutter
nnoremap <Leader>gt :GitGutterToggle<cr>

" spell check git commit messages
autocmd FileType gitcommit setlocal spell

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

" Pull up tagbar using leader b
nnoremap <silent> <Leader>b :TagbarToggle<CR>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Switch to specific tab numbers with Command+number
if has("gui_macvim")
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif
" display number in tab
if has('gui_running')
  set guitablabel=⌘%N@%M%t
endif

