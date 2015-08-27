zsh:
  dinosaur:
    home: "/home/dinosaur"
    theme: robbyrussell
    editor: vim
    lang: en_NZ.UTF-8
    plugins:
      - debian
      - docker
      - git
      - github
      - gitignore
      - history
      - history-substring-search
      - jsontools
      - last-working-dir
      - node
      - npm
      - nvm
      - python
      - rsync
      - sudo
      - urltools
      - web-search
    aliases:
      tmux: tmux -2
      git: hub
      gs: git status
      ga: git add
      gc: git commit
      gco: git checkout
      gcom: git checkout master
      gfo: git fetch origin
      gg: git log --pretty=oneline --abbrev-commit --graph --decorate
      gga: git log --pretty=oneline --abbrev-commit --graph --decorate --all
      gpom: git fetch && git pull origin master
      gdom: git diff origin/master
      gtrash: git status --short | xargs trash
      gres: git diff origin/master --name-only | xargs sublime
      gdres: git diff --name-only | xargs sublime
      gfire: git push origin HEAD:${USER}-fire -f
    zshrv: |
      bindkey -v
      bindkey "^R" history-incremental-search-backward
      bindkey "^S" history-incremental-search-forward
      bindkey "^P" history-search-backward
      bindkey "^N" history-search-forward 
    zshenv: |
      export PYTHONPATH=$HOME/repos/google/caffe/python:$PYTHONPATH
      export PATH="$PATH:$HOME/.rvm/bin"
    zlogin: |
      [[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"
      [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
