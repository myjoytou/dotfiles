set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'                             " was not working, enable it sometimes later

Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'                         " source for gcc command for comments
Plugin 'tpope/vim-fugitive.git'                      " git support
Plugin 'pangloss/vim-javascript'                     " JavaScript support
Plugin 'mxw/vim-jsx'
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'myjoytou/YouCompleteMe'                      " Using forked version of
" YCM as it was causing the backspace in delimitmate to break and both quotes
" were not getting deleted correctly, when using :DelimitMateText, it got
" caught
" Plugin 'Valloric/YouCompleteMe'                      " Completion engine for vim
Plugin 'junegunn/fzf'                                " Fuzzy search files
Plugin 'junegunn/fzf.vim'                            " fuzzy search support for vim
Plugin 'scrooloose/nerdtree'                         " File explorer in tree for vim
Plugin 'Xuyuanp/nerdtree-git-plugin'                 " shows the file chaged status in tree
Plugin 'vim-airline/vim-airline'                     " shows status in vim, has a lot of info
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'                     " syntax linting support for vim
Plugin 'rking/ag.vim'                                " the silver searcher support for vim
Plugin 'mtth/scratch.vim'                            " put anything in scratch buffer, no need to create any file
Plugin 'dyng/ctrlsf.vim'                             " Search every where ctrl shift f functionality like sublime
Plugin 'terryma/vim-multiple-cursors'                " press ctrl n for selecting multiple similar words at a time
Plugin 'mattn/emmet-vim'                             " emmet support for vim
Plugin 'SirVer/ultisnips'                            " snippet pluggin
Plugin 'epilande/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'ternjs/tern_for_vim'                         " completion engine for javascript
Plugin 'tpope/vim-surround'                          " change or delete surrounding text
Plugin 'jelera/vim-javascript-syntax'
Plugin 'flazz/vim-colorschemes'
Plugin 'yggdroot/indentline'
Plugin 'Raimondi/delimitMate'                        " Provides automatic closing quotes, parens
Plugin 'tpope/vim-endwise'                           " Adds end to ruby code
Plugin 'airblade/vim-gitgutter'                      " Git gutter support for vim
Plugin 'vim-ruby/vim-ruby'                           " Vim/ Ruby configuration files for ruby
Plugin 'vim-scripts/taglist.vim'                     " Source code browser
Plugin 'JamshedVesuna/vim-markdown-preview'          " Previewing markdown without leaving vim
Plugin 'vim-scripts/Rename'                          " Rename a file in buffer and on disk
Plugin 'vim-scripts/BufOnly.vim'                     " delete all buffers but current one
Plugin 'pbrisbin/vim-mkdir'                          " Automatic creating non-existant directories
Plugin 'ngmy/vim-rubocop'                            " RoboCop syntax checker
Plugin 'jceb/vim-orgmode'                            " Todo list in vim like emacs org mode
Plugin 'tpope/vim-speeddating'                       " dependency for vim-orgmode
Plugin 'tpope/vim-haml'                              " Latest HAML support
Plugin 'tpope/vim-obsession'                         " vim session management
Plugin 'godlygeek/tabular'                           " plugin to auto align things
Plugin 'octol/vim-cpp-enhanced-highlight'            " cpp highlighting
Plugin 'easymotion/vim-easymotion'                   " easy motion for vim, which removes <number> out of <number>w and uses <leader><leader> to trigger
Plugin 'pseewald/vim-anyfold'                        " better folding in vim: indent based
Plugin 'tpope/vim-abolish'                           " easily search for, substitute, and abbreviate multiple variants of a word
Plugin 'wikitopian/hardmode'                         " disable h,j,k,l and arrow keys in vim



" Plugin 'skwp/greplace.vim'                           " Search and replace across all files interactively
" Plugin 'chrisbra/csv.vim'                            " CSV support for VIM
" Plugin 'vim-scripts/IndexedSearch'                   " shows 'Nth match out of M' at every search (index of match+total # matches)
" Plugin 'vim-scripts/Specky'                          " Functions to help make behavioral testing easy with ruby and rspec, it was too old
" Plugin 'garbas/vim-snipmate'                         " Not very good as ultisnip will replace it
" Plugin 'MarcWeber/vim-addon-mw-utils'                " Required by snipmate
" Plugin 'tomtom/tlib_vim'                             " Required by snipmate. This library provides some utility functions. There isn't much need to  install it unless another plugin requires you to do so. NOT SO IMPORTANT
" Plugin 'majutsushi/tagbar'      " Display tags in a window ordered by scope,
" there was some problem with this plugin
" Plugin 'xolox/vim-easytags'     " Automatic generation of ctags
" Plugin 'xolox/vim-misc'                              " Required by vim easytags
" Plugin 'alvan/vim-closetag'   " Auto close html tags. No use!!!
" Plugin 'thaerkh/vim-workspace'   " Auto save files and Sessions
" Plugin 'vim-scripts/SyntaxComplete'
" Plugin 'tpope/vim-dispatch'      " Plugin for async call using vim
" Plugin 'vim-scripts/ShowMarks'   " Plugin for showing marks set by m
" Plugin 'vim-scripts/project.tar.gz' " not required
" Plugin 'vim-scripts/DfrankUtil'
" Plugin 'vim-scripts/vimprj'
" Plugin 'vim-scripts/indexer.tar.gz'
" Plugin 'justinmk/vim-syntax-extra'                                                                                                                                     " not required

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable



" --------------------------------------------------------------------
"             UI related stuff
" --------------------------------------------------------------------

" colorscheme ubaryd
" colorscheme janah
" colorscheme made_of_code
" colorscheme molokai
" set cursorline      " Highlight current line
set cc=80           " highlight the 80 columns

set background=dark " Background color for better constrast

" sets the status line
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

"-------------------------- UI stuff ends here -----------------------



set encoding=utf-8
set showcmd                    " display incomplete commands


set splitright                 " opening buffer on the right
set nowrap                     " don't wrap lines

let mapleader = ","            " mapping leader(\) to ,


" --------------------------------------------------------------------
"  TABS AND SPACES
" --------------------------------------------------------------------

set tabstop=2 shiftwidth=2     " a tab is two spaces (or set this to 4)
set expandtab                  " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everything in insert mode

" --------------------------------------------------------------------
"  Line numbers
" --------------------------------------------------------------------
"  Setting relative line number in normal mode and absolute in relative mode
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" --------------------- TABS AND SPACES ends here  ------------------


" --------------------------------------------------------------------
" INDENTATION
" --------------------------------------------------------------------
set cindent
set autoindent
set smarttab
set expandtab
set cpoptions+=$

" ------------------------ INDENTATION ENDS HERE --------------------

" set spell spelllang=en_us       " enabling spelling check

set wildmode=full
set wildmenu

" --------------------------------------------------------------------
" PERFORMANCE
" --------------------------------------------------------------------

set lazyredraw " redraw only when we need to.
set ttyfast    " Send more characters at a given time.

" ----------------------- PERFORMANCE ENDS HERE ----------------------

set autoread                    " re-load files automatically


"" Visual
set showmatch
set ruler " Ruler on
set clipboard+=unnamed

set history=256

"" Ctags support
set tags=./tags;,tags;           " look for a tags file in the directory of the current file,
                                 " then upward until / and in the working directory, then upward until /

" let g:easytags_dynamic_files = 1 " project specific ctags generation
" let g:easytags_async = 1         " Do not block vim do work in async

"" Support for ack
set grepprg=ag

" --------------------------------------------------------------------
"  SEARCHING
" --------------------------------------------------------------------

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ------------------------ SEARCHING ENDS HERE ----------------------


" --- backup and swap files ---
" I save all the time, those are annoying and unnecessary...
" set nobackup
" set nowritebackup
" set noswapfile


" --------------------------------------------------------------------
"  PLUGINS
" --------------------------------------------------------------------

"" eclim vim configuration
let g:EclimCompletionMethod = 'omnifunc'

"" Javascript syntax highlighting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:jsx_ext_required = 0 " Allow jsx in normal js files

"" Vim any-fold settings
let anyfold_activate=1
set foldlevel=100

"" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1 " close the preview window after the completion
" let g:ycm_show_diagnostics_ui = 0     " do not use YCM syntax checker

"" Nerd Tree specific
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" vim airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='onedark'

"" Ulti snip settings
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
let g:UltiSnipsSnippetsDir='~/.vim/custom_snippets'
" Setting the search path for snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom_snippets"]

"" Auto close plugin for html tags settings
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx"


"" ctrl p plugin
" let g:ctrlp_max_files=0
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 'Et'
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"

"" Syntastic
let g:syntastic_javascript_checkers = ['eslint']      " eslint

"" Ruby
" let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" ruby path if you are using rbenv
let g:ruby_path = system('echo $HOME/.rbenv/shims')

let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_cpplint_exec = 'cpplint'  " as cpplint is downloaded using pip this is required


" settings for vim cpp enhanced highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1



" let g:syntastic_debug = 33
let g:syntastic_quiet_messages={}
" let g:syntastic_quiet_messages = {'level': 'warnings'}

"" Syntastic related settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" vim rails settings

" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

"" python syntax highlighting
let python_highlight_all = 1

"" Tern support
let g:tern_map_keys=1 "enable keyboard shortcuts
let g:tern_show_argument_hints='on_hold' "show argument hints
map <Leader>t :TernDef<Return>

"" Markdown preview settings
let vim_markdown_preview_hotkey='<C-m>'
" let vim_markdown_preview_browser='Google'
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=2

" using all the colors 256 versions
let g:rehash256 = 1


"" Todo list in vim

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" [Buffers] Jump to the existing window if possible
" let g:fzf_buffers_jump = 1 "It was bit slow
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Vim hard mode settings
" autocmd! VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>m <Esc>:call ToggleHardMode()<CR>

" ------------------------ PLUGINS ENDS HERE -----------------------


" --------------------------------------------------------------------
"  KEY MAPPINGS
" --------------------------------------------------------------------

"" mapping leader for buffer switch
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
" map <Leader>f :b
map <leader>q :buffers<Return>:buffer


" Mapping Ag for search with preview
" map <leader>f :Ag <CR>

"" mapping ctrl shift f
map <leader>e :CtrlSF

"" mapping git diff
map <leader>g :Gdiff<Return>

"" mapping :vnew
map <leader>v :vnew<CR>

map <Leader><Enter> :Buffers <CR>

map <leader>x :!

"" c++11 stuffs
map <leader>cx :! g++ -std=c++11

"" For macro playing
nnoremap <Space> @q

"" Mapping for removing highlighting
nnoremap <leader><space> :noh <CR>

"" Mapping for vim-org
nnoremap <leader>cN :OrgCheckBoxNewAbove <CR>
nnoremap <leader>cn :OrgCheckBoxNewBelow <CR>
nnoremap <leader>cc :OrgCheckBoxToggle <CR>

nnoremap <leader>cl :OrgPlainListItemNewBelow <CR>
nnoremap <leader>cL :OrgPlainListItemNewAbove <CR>


nnoremap <leader>sa :OrgDateInsertTimestampActiveCmdLine <CR>
nnoremap <leader>si :OrgDateInsertTimestampInactiveCmdLine <CR>

"" mapping navigation in buffer
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
map <leader>o :only<CR>

" to prevent clash with youcompleteme, change snippet trigger
" imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger

" Search in visula mode
vnoremap // y/<C-R>"<CR>

" bind K to grep word under cursor
nnoremap <leader>b  :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>
command! -nargs=+ -complete=file -bar Ag silent! ag! <args>|cwindow|redraw!

" " Tagbar toggle command
" nmap <F8> :TagbarToggle<CR>

" Current file deletion
nnoremap rm :call delete(expand('%')) \| bdelete!<CR>

" nnoremap <F5> :buffers<CR>:buffer<Space>

" FZF settings

map <C-p> :FZF<CR>

" Indenting the whole file
nmap <leader>i :normal ggvG=<cr>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" --------------------------------------------------------------------
" CUSTOM COMMANDS
" --------------------------------------------------------------------

" Sourcing vimrc when written
autocmd! BufWritePost .vimrc source %


" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" For mouse events in vim
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

runtime macros/matchit.vim  " for matching do end in ruby

" autocmd BufRead,BufNewFile * setlocal spell  "spell checking for all files

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
  " :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above

" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \                 <bang>0)
"
"

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

