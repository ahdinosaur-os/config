vim:
  michael:
    home: "/home/michael"
    bundles:
      - 'tpope/vim-sensible'
      - 'tpope/vim-surround'
      - 'tpope/vim-fugitive'
      - 'kien/ctrlp.vim'
      - 'scrooloose/nerdtree'
      - 'spf13/vim-autoclose'
      - 'flazz/vim-colorschemes'
      - 'bling/vim-airline'
      - 'mbbill/undotree'
      - 'jgdavey/tslime.vim'
      - 'terryma/vim-multiple-cursors'
      - 'pangloss/vim-javascript'
      - 'kchmck/vim-coffee-script'
      - 'moll/vim-node'
      - 'ahdinosaur-os/npm.vim'
      - 'geekjuice/vim-mocha'
      - 'hdima/python-syntax'
      - 'othree/html5.vim'
      - 'skammer/vim-css-color'
      - 'hail2u/vim-css3-syntax'
      - 'groenewege/vim-less'
      - 'saltstack/salt-vim'
      - 'vim-scripts/csv.vim'
      - 'plasticboy/vim-markdown'
    leader: ","
    background: dark
    colorscheme: candycode
    tabwidth: 2
    vimrc: |
      map <C-q> :NERDTreeToggle<CR>
      nnoremap <C-w> :UndotreeToggle<cr>
      let g:multi_cursor_use_default_mapping=0
      let g:multi_cursor_next_key="<C-n>"
      let g:multi_cursor_prev_key="<C-p>"
      let g:multi_cursor_skip_key="<C-k>"
      let g:multi_cursor_quit_key="<Esc>"
      let g:multi_cursor_exit_from_insert_mode=0
      autocmd vimenter * if !argc()
      vmap <C-c><C-c> <Plug>SendSelectionToTmux
      nmap <C-c><C-c> <Plug>NormalModeSendToTmux
      nmap <C-c>r <Plug>SetTmuxVars
      set laststatus=2
      let g:airline_powerline_fonts=1
      let g:airline#extensions#tabline#enabled=1
      map <C-right> :bn<CR>
      map <C-left> :bp<CR>
      set number
      set clipboard=unnamedplus
