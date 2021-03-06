" Vim related settings which will not work in VI mode {{{

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on     " required
syntax enable

" }}}

" Plugins Listings {{{
" set the runtime path to include Vundle and initialize
" set rtp+=~/.config/nvim/bundle/Vundle.vim

" change vundle to suit nvim rather than vim
" call vundle#begin("~/.config/nvim/bundle")
call plug#begin('~/.config/nvim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-rails', { 'for': 'ruby' }                             " was not working, enable it sometimes later

Plug 'honza/vim-snippets'
Plug 'tomtom/tcomment_vim'                         " source for gcc command for comments
Plug 'tpope/vim-fugitive'                      " git support
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  " asynchronous auto completion for neovim
Plug 'fishbullet/deoplete-ruby', { 'for': 'ruby'}              " ruby code Completion
Plug 'Shougo/deoplete-rct', { 'for' : 'ruby'}                  " ruby code completion using rcodetools gem
Plug 'Shougo/neco-vim'                             " vim code Completion
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " Javascript autocompletion
Plug 'Rip-Rip/clang_complete'                      " C / C++ code completion
Plug 'zchee/deoplete-jedi', { 'for': 'python' }                         " python code completion
Plug 'junegunn/fzf'                                " Fuzzy search files
Plug 'junegunn/fzf.vim'                            " fuzzy search support for vim
Plug 'scrooloose/nerdtree'                         " File explorer in tree for vim
Plug 'Xuyuanp/nerdtree-git-plugin'                 " shows the file chaged status in tree
Plug 'vim-airline/vim-airline'                     " shows status in vim, has a lot of info
Plug 'vim-airline/vim-airline-themes'
Plug 'skielbasa/vim-material-monokai'              " monokai theme for vim
Plug 'neomake/neomake', { 'do': 'npm install eslint jshint jscs; gem install rubocop -v 0.46.0; gem install reek'} " asynchronous linting in neovim
Plug 'rking/ag.vim'                                " the silver searcher support for vim
Plug 'mtth/scratch.vim'                            " put anything in scratch buffer, no need to create any file
Plug 'mattn/emmet-vim'                             " emmet support for vim
Plug 'SirVer/ultisnips'                            " snippet pluggin
Plug 'tpope/vim-surround'                          " change or delete surrounding text
Plug 'flazz/vim-colorschemes'
Plug 'yggdroot/indentline'
Plug 'Raimondi/delimitMate'                        " Provides automatic closing quotes, parens
Plug 'tpope/vim-endwise'                           " Adds end to ruby code
Plug 'airblade/vim-gitgutter'                      " Git gutter support for vim
Plug 'vim-ruby/vim-ruby'                           " Vim/ Ruby configuration files for ruby
Plug 'euclio/vim-markdown-composer', { 'for': 'markdown' }                " Better than vim-markdown-preview
Plug 'vim-scripts/Rename'                          " Rename a file in buffer and on disk
Plug 'vim-scripts/BufOnly.vim'                     " delete all buffers but current one
Plug 'pbrisbin/vim-mkdir'                          " Automatic creating non-existant directories
Plug 'ngmy/vim-rubocop'                            " RoboCop syntax checker
Plug 'rainerborene/vim-reek'                       " Reek code smell checker
Plug 'tpope/vim-haml'                              " Latest HAML support
Plug 'tpope/vim-obsession'                         " vim session management
Plug 'octol/vim-cpp-enhanced-highlight'            " cpp highlighting
Plug 'pseewald/vim-anyfold'                        " better folding in vim: indent based
" Plug 'dbgx/lldb.nvim'                              " lldb support for neovim
Plug 'skywind3000/asyncrun.vim'                    " run system commands asynchronously
Plug 'othree/javascript-libraries-syntax.vim'      " library syntax for vim
" Plug 'othree/yajs.vim'                             " syntax library for javascript
" Plug 'othree/es.next.syntax.vim'                   " for es next features, required by yajs
Plug 'mxw/vim-jsx'                                 " jxs support in neovim
Plug 'pangloss/vim-javascript'                     " improved javascript support for vim
" Plug 'jelera/vim-javascript-syntax'                " Enhanced javascript syntax support for vim
Plug 'styled-components/vim-styled-components'     " support for styled components react in vim
Plug 'hail2u/vim-css3-syntax'                      " css3 support for vim
Plug 'alvan/vim-closetag'                          " Auto close tag for jsx components



" Plug 'https://github.com/vim-scripts/ScrollColors'
" Plug 'myjoytou/YouCompleteMe'                      " Using forked version of
" YCM as it was causing the backspace in delimitmate to break and both quotes
" were not getting deleted correctly, when using :DelimitMateText, it got
" caught
" Plug 'Valloric/YouCompleteMe'                      " Completion engine for vim
" Plug 'osyo-manga/vim-monster'                      " ruby code completion
" Plug 'vim-syntastic/syntastic'                     " syntax linting support for vim
" Plug 'w0rp/ale'                                    " Seems better than neomake
" Plug 'dyng/ctrlsf.vim'                             " Search every where ctrl shift f functionality like sublime
" Plug 'terryma/vim-multiple-cursors'                " press ctrl n for selecting multiple similar words at a time
" Plug 'epilande/vim-react-snippets'
" Plug 'epilande/vim-es2015-snippets'
" Plug 'ternjs/tern_for_vim'                         " completion engine for javascript
" Plug 'ntpeters/vim-better-whitespace'              " remove whitespace; not good as it is bit slow, moving to a git commit hook
" Plug 'vim-scripts/taglist.vim'                     " Source code browser
" Plug 'JamshedVesuna/vim-markdown-preview'          " Previewing markdown without leaving vim
" Plug 'jceb/vim-orgmode'                            " Todo list in vim like emacs org mode
" Plug 'tpope/vim-speeddating'                       " dependency for vim-orgmode
" Plug 'godlygeek/tabular'                           " plugin to auto align things
" Plug 'easymotion/vim-easymotion'                   " easy motion for vim, which removes <number> out of <number>w and uses <leader><leader> to trigger


" Plug 'Quramy/vim-js-pretty-template'               " template string syntax support for javascript
" Plug 'tpope/vim-abolish'                           " easily search for, substitute, and abbreviate multiple variants of a word
" Plug 'wikitopian/hardmode'                         " disable h,j,k,l and arrow keys in vim
" Plug 'skwp/greplace.vim'                           " Search and replace across all files interactively
" Plug 'chrisbra/csv.vim'                            " CSV support for VIM
" Plug 'vim-scripts/IndexedSearch'                   " shows 'Nth match out of M' at every search (index of match+total # matches)
" Plug 'vim-scripts/Specky'                          " Functions to help make behavioral testing easy with ruby and rspec, it was too old
" Plug 'garbas/vim-snipmate'                         " Not very good as ultisnip will replace it
" Plug 'MarcWeber/vim-addon-mw-utils'                " Required by snipmate
" Plug 'tomtom/tlib_vim'                             " Required by snipmate. This library provides some utility functions. There isn't much need to  install it unless another plugin requires you to do so. NOT SO IMPORTANT
" Plug 'majutsushi/tagbar'      " Display tags in a window ordered by scope,
" there was some problem with this plugin
" Plug 'xolox/vim-easytags'     " Automatic generation of ctags
" Plug 'xolox/vim-misc'                              " Required by vim easytags
" Plug 'alvan/vim-closetag'   " Auto close html tags. No use!!!
" Plug 'thaerkh/vim-workspace'   " Auto save files and Sessions
" Plug 'vim-scripts/SyntaxComplete'
" Plug 'tpope/vim-dispatch'      " Plug for async call using vim
" Plug 'vim-scripts/ShowMarks'   " Plug for showing marks set by m
" Plug 'vim-scripts/project.tar.gz' " not required
" Plug 'vim-scripts/DfrankUtil'
" Plug 'vim-scripts/vimprj'
" Plug 'vim-scripts/indexer.tar.gz'
" Plug 'justinmk/vim-syntax-extra'                                                                                                                                     " not required

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" All of your Plugins must be added before the following line

" call vundle#end()            " required
call plug#end()

" }}}

"  UI related stuff {{{
" --------------------------------------------------------------------
"             UI related stuff
" --------------------------------------------------------------------

" colorscheme ubaryd
" colorscheme janah
" colorscheme made_of_code
" colorscheme molokai
" colorscheme onehalfdark
" colorscheme angr
" colorscheme material-monokai

set cursorline      " Highlight current line
set cc=80           " highlight the 80 columns

set background=dark " Background color for better constrast

set termguicolors   " use true-colors in terminal

" using different cursor size for insert mode and normal mode
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

" sets the status line
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

"-------------------------- UI stuff ends here -----------------------

" }}}

" Common settings {{{

set encoding=utf-8
set showcmd                    " display incomplete commands


set splitright                 " opening buffer on the right
set nowrap                     " don't wrap lines

let mapleader = ","            " mapping leader(\) to ,

set wildmode=full
set wildmenu

" this is done to allow webpack to do auto complilation
" this setting will disable save write 
set backupcopy=yes

" save automatically when text is changed
" augroup AutoSave
"   autocmd!
"
"   set updatetime=200
"   autocmd CursorHold * :wall 
" augroup END

" using all the colors 256 versions
let g:rehash256 = 1

set lazyredraw " redraw only when we need to.
set ttyfast    " Send more characters at a given time.

set ruler " Ruler on
set clipboard+=unnamed

set history=256

" }}}

"  Tabs and Spaces {{{
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
set number relativenumber

" we are using auto cmd group because if the same autocmd has been
" defined twice in vimrc, vim will not replace the earlier one, it
" will keep both. So auto cmd groups will remove this possibility.
" The first command 'autocmd!' clears everything in the group.

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" --------------------- TABS AND SPACES ends here  ------------------
" }}}

" Indentation {{{
" --------------------------------------------------------------------
" INDENTATION
" --------------------------------------------------------------------
set cindent
set autoindent
set smarttab
set expandtab
set cpoptions+=$

" ------------------------ INDENTATION ENDS HERE --------------------
" }}}

" set spell spelllang=en_us       " enabling spelling check

set autoread                    " re-load files automatically

"" Visual
set showmatch

"" Ctags support
set tags=./tags;,tags;           " look for a tags file in the directory of the current file,
" then upward until / and in the working directory, then upward until /

" let g:easytags_dynamic_files = 1 " project specific ctags generation
" let g:easytags_async = 1         " Do not block vim do work in async

"" Support for ack
set grepprg=rg\ --vimgrep

" Searching {{{
" --------------------------------------------------------------------
"  SEARCHING
" --------------------------------------------------------------------

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ------------------------ SEARCHING ENDS HERE ----------------------
" }}}

" --- backup and swap files ---
" I save all the time, those are annoying and unnecessary...
" set nobackup
" set nowritebackup
" set noswapfile


"  Plugins {{{
" --------------------------------------------------------------------
"  PLUGINS
" --------------------------------------------------------------------
" Python mode support for python 3
let g:pymode_python = 'python3'

" augroup BetterWhiteSpace
"   autocmd!
"   autocmd BufEnter * EnableStripWhitespaceOnSave
" augroup END

" Clang completion setting
let g:clang_library_path='/home/vivek/Downloads/clang+llvm-5.0.0-linux-x86_64-ubuntu16.04/lib'
" use c++11 features
let g:clang_user_options="-std=c++0x"

" setting for vim-closetag {{{
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.js"
" }}}

" setting for jsx support
let g:jsx_ext_required = 0

" settings for ternjs {{{

" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the 
" client side. Default: 1
let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some 
" heuristics to try and return some properties anyway. Set this to 0 to 
" turn that off. Default: 1
let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of 
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been 
" spelled out by at least two characters. Default: 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0

"" Javascript syntax highlighting

" Whether to include JavaScript keywords when completing something that is not 
" a property. Default: 0
let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
let g:deoplete#sources#ternjs#in_literal = 0


"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = ['jsx', 'javascript.jsx', 'vue']

" }}}

" setting for vim-js-pretty-template
" augroup javascript_string_template
"   autocmd!
"   autocmd FileType javascript JsPreTmpl html
" augroup END

" use system python for neovim, this is done for lldb.nvim to work
" let g:python_host_prog = '/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python'

"" Javascript syntax highlighting {{{
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:jsx_ext_required = 0 " Allow jsx in normal js files
" }}}

"" Vim any-fold settings {{{
let anyfold_activate=1
set foldlevel=100
" }}}

"" YouCompleteMe {{{
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1 " close the preview window after the completion
" let g:ycm_show_diagnostics_ui = 0     " do not use YCM syntax checker
" }}}

" Deoplete Settings {{{
let g:deoplete#enable_at_startup = 1

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.javascript = '[^. *\t]\.\w*'

" let g:deoplete#enable_refresh_always = 0
" let g:deoplete#enable_camel_case = 1
" let g:deoplete#max_abbr_width = 35
" let g:deoplete#max_menu_width = 20
" let g:deoplete#skip_chars = ['(', ')', '<', '>']
" let g:deoplete#tag#cache_limit_size = 800000
" let g:deoplete#file#enable_buffer_path = 1

" let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.Javascript = ['tern#Complete', 'csscomplete#CompleteCSS']

" omni function
" aug omnicomplete
"   autocmd!
"   autocmd FileType css,sass,scss,stylus,less setl omnifunc=csscomplete#CompleteCSS
" aug END

augroup deoplete_vim
  autocmd!
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()

function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
"}}}

" --------------------- Deoplete Settings Ends here -------------
" }}}

" "" vim-monster settings {{{
" let g:monster#completion#rcodetools#backend = "async_rct_complete"
" let g:deoplete#sources#omni#input_patterns = {
" \   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
" \}}}

"" Nerd Tree specific {{{
augroup nerdtree
  autocmd!
  autocmd StdinReadPre * let s:std_in=1
  noremap <C-b> :NERDTreeToggle<CR>
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END
" }}}

"" vim airline {{{
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
" let g:airline_theme='onedark'
" let g:airline_theme='materialmonokai'
" }}}

" Ulti snip settins {{{
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
let g:UltiSnipsSnippetsDir='~/.config/nvim/custom_snippets'
" Setting the search path for snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom_snippets"]
" }}}

"" ctrl p plugin {{{
" let g:ctrlp_max_files=0
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 'Et'
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}

" Neomake Settings {{{
" When writing a buffer.
" call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 500)

" let g:neomake_open_list = 2 " open quickfix automatically
"
" For ruby
" let g:neomake_ruby_enabled_makers = ['mri', 'rubocop', 'reek']

let g:neomake_place_signs = 1
" let g:neomake_serialize = 1
" let g:neomake_serialize_abort_on_error = 1

" open quickfix window automatically
" let g:neomake_open_list = 2

let g:neomake_javascript_enabled_makers = ['eslint', 'jscs']

" highlight neomake errors differently
highlight NeomakeErrorMsg ctermfg=227 ctermbg=237
let g:neomake_warning_sign={'text': '⚠', 'texthl': 'NeomakeErrorMsg'}
" }}}


" Syntastic settings {{{
" -------------------------------------------------------------------------
"   Syntastic related settings
" -------------------------------------------------------------------------
" Disable inherited syntastic
let g:syntastic_mode_map = {
      \ "mode": "passive",
      \ "active_filetypes": [],
      \ "passive_filetypes": [] }

" let g:syntastic_debug = 33
" let g:syntastic_quiet_messages={}
" let g:syntastic_quiet_messages = {'level': 'warnings'}

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_javascript_checkers = ['eslint']      " eslint

"" Ruby
" let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" ruby path if you are using rbenv
" let g:ruby_path = system('echo $HOME/.rbenv/shims')

" let g:syntastic_ruby_checkers = ['mri']
" let g:syntastic_cpp_checkers = ['gcc']
" let g:syntastic_cpp_cpplint_exec = 'cpplint'  " as cpplint is downloaded using pip this is required

"----------------------------- Syntastic settings ends here ----------------
" }}}

" settings for vim cpp enhanced highlighting {{{
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
"}}}


"" vim rails settings {{{

" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_rails = 1
augroup filetype_ruby
  autocmd!
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
augroup END
" }}}

"" python syntax highlighting
let python_highlight_all = 1

" "" Tern support {{{
" let g:tern_map_keys=1 "enable keyboard shortcuts
" let g:tern_show_argument_hints='on_hold' "show argument hints
" map <Leader>t :TernDef<Return>
" }}}

"" Markdown preview settings {{{
" let vim_markdown_preview_hotkey='<C-m>'
" " let vim_markdown_preview_browser='Google'
" let vim_markdown_preview_github=1
" let vim_markdown_preview_toggle=2
" }}}


" FZF related settings {{{
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
" }}}

" Emmet support settings {{{
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
" let g:user_emmet_leader_key='<TAB>'
" augroup emmet_support
"   autocmd!
"   autocmd FileType html,css,javascript.jsx EmmetInstall
" augroup END
" }}}

" ------------------------ PLUGINS ENDS HERE -----------------------

" }}}


" Key Mappings {{{
"
" --------------------------------------------------------------------
"  KEY MAPPINGS
" --------------------------------------------------------------------


" Always use noremap instead of map as noremap is non-recursive in
" nature and it will never run into recursion. For more info
" read http://learnvimscriptthehardway.stevelosh.com/chapters/05.html
"


" save using ctrl-s, as we are using noremap it is difficult
" to reuse normal mode <c-s>
" nnoremap <c-s>  :w<CR> 
" vnoremap <c-s> <Esc>:w<CR>gv
" inoremap <c-s> <Esc>:w<CR>

nnoremap <leader>w :w<CR>
vnoremap <leader>w <Esc>:w<CR>gv
inoremap <leader>w <Esc>:w<CR>

nnoremap <leader>q :wq<CR>
vnoremap <leader>q <Esc>:wq<CR>gv
inoremap <leader>q <Esc>:wq<CR>

" mapping esc key to jk
inoremap jk <esc>
" removing esc key property to learn new mapping
inoremap <esc> <nop>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Buffer related keymapping {{{

"" mapping leader for buffer switch
noremap <Leader>a :bprev<Return>
noremap <Leader>s :bnext<Return>
noremap <Leader>d :bd<Return>
" map <Leader>f :b
" noremap <leader>q :buffers<Return>:buffer

"" mapping navigation in buffer
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
noremap <leader>o :only<CR>

"" Listing all the buffers
noremap <Leader><Enter> :Buffers <CR>

" }}}

" next and previous errors
noremap <leader>n :lnext <CR>
noremap <leader>p :lprev <CR>

" copying the current file to clipboard
nnoremap <leader>cp :let @*=expand("%") <CR>

"" mapping ctrl shift f
" noremap <leader>e :CtrlSF

"" mapping git diff
noremap <leader>g :Gdiff<Return>

"" mapping :vnew
noremap <leader>v :vnew<CR>

noremap <leader>x :!

"" c++11 stuffs
noremap <leader>cx :! g++ -std=c++11

"" For macro playing
nnoremap <Space> @q

"" Mapping for removing highlighting
nnoremap <leader><space> :noh <CR>

"" Mapping for vim-org
" nnoremap <leader>cN :OrgCheckBoxNewAbove <CR>
" nnoremap <leader>cn :OrgCheckBoxNewBelow <CR>
" nnoremap <leader>cc :OrgCheckBoxToggle <CR>
"
" nnoremap <leader>cl :OrgPlainListItemNewBelow <CR>
" nnoremap <leader>cL :OrgPlainListItemNewAbove <CR>
"
"
" nnoremap <leader>sa :OrgDateInsertTimestampActiveCmdLine <CR>
" nnoremap <leader>si :OrgDateInsertTimestampInactiveCmdLine <CR>


" to prevent clash with youcompleteme, change snippet trigger
" imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger

" Search in visula mode
vnoremap // y/<C-R>"<CR>

" bind <leader>b to grep word under cursor
" nnoremap <leader>b :Ag '"<C-R><C-W>"<CR>:cw<CR>
" <C-R><C-W> is used to get the word under cursor
" using Rg, as ag.vim is not being maintained anymore
noremap <leader>b :Rg <C-R><C-W><CR>

command! -nargs=+ -complete=file -bar Ag silent! ag! <args>|cwindow|redraw!

"" Tagbar toggle command
" nmap <F8> :TagbarToggle<CR>

" Current file deletion
" nnoremap rm :call delete(expand('%')) \| bdelete!<CR>


" FZF settings {{{

" FZF settings
" if has('mac')
" noremap <D-p> :FZF<CR>
" elseif has('unix')
noremap <C-p> :FZF<CR>
" endif

" nnoremap <D-a> :FZF<CR>

" Indenting the whole file
nnoremap <leader>i :normal gg=G<cr>

" Put error on a line which have trailing whitespace
" nnoremap <Leader>w :match Error /\v\s+$/<CR>

" Mapping selecting mappings nnoremap <leader><tab> <plug>(fzf-maps-n)
xnoremap <leader><tab> <plug>(fzf-maps-x)
onoremap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
inoremap <c-x><c-k> <plug>(fzf-complete-word)
inoremap <c-x><c-f> <plug>(fzf-complete-path)
inoremap <c-x><c-j> <plug>(fzf-complete-file-ag)
inoremap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
" }}}



" }}}

" --------------------------------------------------------------------
" CUSTOM COMMANDS
" --------------------------------------------------------------------
" Custom Commands {{{

" set marker as fold method in vim
" Vimscript file setttings ---------------------------------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim set foldlevel=0
  autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup vim_rc_write
  autocmd!
  autocmd BufWritePost ~/.config/nvim/init.vim silent! !cp % ~/dotfiles/init.vim

  " Sourcing vimrc when written
  autocmd BufWritePost ~/.config/nvim/init.vim :source $MYVIMRC
augroup END

" }}}

" Markdown auto folds {{{
augroup filetype_markdown
  autocmd!
  autocmd FileType markdown set foldlevel=0
  autocmd FileType markdown setlocal foldmethod=marker
augroup END

" this might be slowing nvim down
" " Strip trailing whitespace
" function! <SID>StripTrailingWhitespaces()
"     " Preparation: save last search, and cursor position.
"     let _s=@/
"     let l = line(".")
"     let c = col(".")
"     " Do the business:
"     %s/\s\+$//e
"     " Clean up: restore previous search history, and cursor position
"     let @/=_s
"     call cursor(l, c)
" endfunction
" autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" For mouse events in vim
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  if !has('nvim')
    set ttymouse=xterm2
  endif
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

" }}}
