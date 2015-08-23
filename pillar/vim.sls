vim:
  michael:
    home: "/home/michael"
    bundles:
      - 'terryma/vim-multiple-cursors'
      - 'spf13/vim-autoclose'
      - 'flazz/vim-colorschemes'
      - 'bling/vim-airline'
      - 'tpope/vim-sensible'
      - 'tpope/vim-surround'
      - 'tpope/vim-fugitive'
      - 'tpope/vim-unimpaired'
      - 'tpope/vim-signify'
      - 'kien/ctrlp.vim'
      - 'rking/ag.vim'
      - 'tomtom/tcomment_vim'
      - 'vim-scripts/matchit.zip'
      - 'scrooloose/syntastic'
      - 'scrooloose/nerdtree'
      - 'honza/vim-snippets'
      - 'MarcWeber/vim-addon-mw-utils'
      - 'tomtom/tlib_vim'
      - 'garbas/vim-snipmate'
      - 'vim-ruby/vim-ruby'
      - 'tpope/vim-bundler'
      - 'tpope/vim-rake'
      - 'kana/vim-textobj-user'
      - 'nelstrom/vim-textobj-rubyblock'
      - 'tpope/vim-rails'
      - 'tpope/vim-cucumber'
      - 'Valloric/YouCompleteMe'
      - 'moll/vim-node'
      - 'ahdinosaur-os/npm.vim'
      - 'kchmck/vim-coffee-script'
      - 'joshuavial/vim-spec'
      - 'jgdavey/tslime.vim'
      - 'christoomey/vim-tmux-navigator'
      - 'Lokaltog/vim-distinguished'
    leader: ","
    background: dark
    colorscheme: candycode
    tabwidth: 2
    vimrc: |
      set clipboard=unnamedplus
      set expandtab
      set modelines=0
      set shiftwidth=2
      set synmaxcol=128
      set ttyscroll=10
      set encoding=utf-8
      set wrap
      set number
      set nowritebackup
      set noswapfile
      set nobackup
      set hlsearch
      set ignorecase
      set smartcase

      " Automatic formatting
      autocmd BufWritePre *.rb :%s/\s\+$//e
      autocmd BufWritePre *.go :%s/\s\+$//e
      autocmd BufWritePre *.haml :%s/\s\+$//e
      autocmd BufWritePre *.html :%s/\s\+$//e
      autocmd BufWritePre *.scss :%s/\s\+$//e
      autocmd BufWritePre *.slim :%s/\s\+$//e

      au BufNewFile * set noeol
      au BufRead,BufNewFile *.go set filetype=go

      " No show command
      autocmd VimEnter * set nosc

      " format the entire file
      nmap <leader>fef ggVG=

      " reload current file
      nmap <leader>r :e!<CR>

      " quit current file
      nmap <leader>q :q<CR>

      " Open new buffers
      nmap <leader>v  :rightbelow vsp<cr>
      nmap <leader>h   :rightbelow sp<cr>
      nmap <leader>o :only<cr>

      "splits
      nnoremap <C-J> <C-W><C-J>
      nnoremap <C-K> <C-W><C-K>
      nnoremap <C-L> <C-W><C-L>
      nnoremap <C-H> <C-W><C-H>

      " Tab between buffers
      noremap <tab> <c-w><c-w>

      "switch tabs
      nmap <leader>t :tabnew<CR>
      nmap <S-l> :tabnext<CR>
      nmap <S-h> :tabprevious<CR>

      " Switch between last two buffers
      nnoremap <leader><leader> <C-^>

      " Yank text to the OS X clipboard
      noremap <leader>y "*y
      noremap <leader>yy "*Y

      " Preserve indentation while pasting text from the OS X clipboard
      noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

      " vim-spec
      nmap <BS> :call RunCurrentSpecFile()<CR>
      nmap \ :call RunNearestSpec()<CR>
      nmap <CR> :call RunLastSpec()<CR>
      map <leader>s :call RunAllSpecs()<CR>
      map <leader>a :call Send_to_Tmux("rake\n")<CR>
      map <leader>g :call Send_to_Tmux("grunt test\n")<CR>
      nmap ` :call Send_to_Tmux("npm test\n")<CR>

      let g:npm_test_command = ':call Send_to_Tmux("TEST={spec} npm run vim-spec\n")'
      let g:rspec_command = ':call Send_to_Tmux("VIM=1 bundle exec rspec {spec}\n")'
      let g:mocha_js_command = ':call Send_to_Tmux("NODE_ENV=test VIM=1 mocha --recursive {spec}\n")'
      let g:cucumber_command = ':call Send_to_Tmux("VIM=1 cucumber {spec}\n")'
      let g:mocha_coffee_command = ':call Send_to_Tmux("NODE_ENV=test VIM=1 mocha -b --recursive --compilers coffee:coffee-script/register {spec}\n")'

      "switch to teaspoon
      nmap <leader>sp :let g:mocha_coffee_command = g:teaspoon_command<CR> :let g:mocha_js_command = g:teaspoon_command<CR>
      let g:teaspoon_command = ':call Send_to_Tmux("bundle exec rake teaspoon {spec}\n")'

      " tmux shortcuts
      map <leader>b :call Send_to_Tmux("bundle\n")<CR>
      map <leader>c :call Send_to_Tmux("clear\n")<CR>

      " NERDTree
      nmap <leader>n :NERDTreeToggle<CR>
      let NERDTreeHighlightCursorline=1
      let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
      "let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg', 'node_modules']

      " Syntastic
      let g:syntastic_mode_map = { 'mode': 'passive' }
      let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p0/bin/ruby'
      let g:syntastic_javascript_checkers = ['standard']

      " CtrlP
      "nnoremap <silent> t :CtrlP<cr>
      let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
      "set wildignore+=node_modules
      let g:ctrlp_working_path_mode = 2
      "let g:ctrlp_by_filename = 1
      let g:ctrlp_max_files = 600
      let g:ctrlp_max_depth = 5

      "matchit 
      runtime macros/matchit.vim
