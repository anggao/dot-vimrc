"" Ang Gao
"" ang.gao87@gmail.com

source ~/.vim/bundles.vim

"" Basic Settings

" enable syntax hightlight and completation
syntax on                       
syntax enable

" color theme
color vividchalk 

" search operations
set incsearch
"set highlight 	                " conflict with highlight current line
set ignorecase
set smartcase
set hlsearch                    " search highlighting 

" editor settings
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

set nocompatible                " disable vi 
set nofoldenable                " disable folding
set confirm                     " prompt when exitsing from an unsaved file
set history=512                  
set backspace=indent,eol,start   " More powerful backspacing

" display settings
set t_Co=256                    " Explicitly tell vim that the terminal has 256 colors
set title                       " show file in titlebar 
set mouse=a                     " use mouse in all modes 
set report=0                    " always report number of lines changed   
set nowrap                      " dont wrap lines
set scrolloff=2                 " 2 lines above/below cursor when scrolling
set number                      " show line numbers 
set showmatch                   " show matching bracket (briefly jump)
"set ruler                      " 在右下角显示光标的坐标
set showcmd                     " show typed command in status bar 
set laststatus=2                " use 2 lines for the status bar

" Default Identation
set autoindent
set smartindent                 " indent when
set tabstop=4                   " tab width
set softtabstop=4               " backspace & 
set shiftwidth=4                " indent width
"set textwidth=79
set expandtab                   " expand tab to space
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

set nobackup                    " no *~ backup files
set noswapfile

" encoding detection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

filetype indent on               " enable filetype-specific indenting
filetype plugin on               " enable filetype-specific plugins

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" for macvim/Gvim
if has("gui_running")
    set go=aAce  " remove toolbar
    set transparency=0
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif

" Move around windows
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h



" map ctrl+c and ctrl+v
noremap <C-c> y
noremap <C-p> p

" cancel searched highlight
noremap ; :nohlsearch<CR>

" add a new line without entering insert mode
noremap <CR> o<Esc>

" map backspce to delete a character
noremap <BS> X

" Plug-in 
" ========

" NerdTree 
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"
let g:nerdtree_tabs_open_on_gui_startup=0
" open directory of current opened file
map <leader>r :NERDTreeFind<cr>

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1
hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Supertab
"let g:SuperTabDefultCompletionType='context'
"let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" pyflakes
" Not use quickfix window
let g:pyflakes_use_quickfix=0


" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" CtrlP.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
nnoremap <C-W><C-U> :CtrlPMRU<CR>
nnoremap <C-W>u :CtrlPMRU<CR>
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max = 500


" Taglist
let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
map <silent> <F7> :TlistToggle<cr> 


"ctags
"manually, regenerate ctags
map <silent><F6> :!ctags --extra=+f -R *<cr><cr>


" Powerline.vim
"let g:Powerline_symbols='unicode'
"let g:Powerline_symbols='fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"imap <expr><TAB> <SID>my_tab_function()
"imap <expr><CR> <SID>my_cr_function()
"inoremap <expr><CR> pumvisible() ? neocomplcache#sources#snippets_complete#expandable() ? <Plug>neocomplcache_snippets_expand : "/<CR>" : "/<CR>"
function! s:my_cr_function()
    " if there is popup menu
    if pumvisible()
        let l:i=neocomplcache#sources#snippets_complete#expandable()
        " if cursor text is snippets trigger
        if l:i == 1 || l:i == 3
            return "\<Plug>(neocomplcache_snippets_expand)" 
        else
            return neocomplcache#smart_close_popup()
        endif
    else
        return "\<CR>"
    endif
    let l:i=neocomplcache#sources#snippets_complete#expandable()
endfunction
function! s:my_tab_function()
    " if there is popup menu
    if pumvisible()
        return "\<C-n>"
    endif
    let l:i=neocomplcache#sources#snippets_complete#expandable()
    " if cursor text is snippets trigger
    if l:i == 2
        return "\<Plug>(neocomplcache_snippets_jump)" 
    else
        return "\<TAB>"
    endif
endfunction

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" Keybindings for plugin toggle
nmap <F3> :TagbarToggle<cr>
nmap <F2> :NERDTreeToggle<cr>
nmap <F4> :GundoToggle<cr>
nmap <F5> :IndentGuidesToggle<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()

  colorscheme github

  if has("gui_macvim")
    set guifont=Monaco:h25           " for Mac
  elseif has("gui_gtk")
    set guifont=Monospace\ 22        " for ubuntu
  end

endfunction

function! PresentationModeOff()

  colorscheme rails_envy
  "colorscheme torte
  if has("gui_macvim")
    set guifont=Monaco:h17           " for Mac
  elseif has("gui_gtk")
    set guifont=Monospace\ 14        " for ubuntu
  end

endfunction

function! TogglePresentationMode()

  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call PresentationModeOn()
    let w:present=1
  else
    call PresentationModeOff()
    let w:present=0
  endif

endfunction

map <leader>z :call TogglePresentationMode()<CR>
