packages:
  # utils
  - xclip
  # CAD (computer assisted design)
  - openscad
  - kicad
  - blender
  - gimp
  - inkscape
  # music
  - audacity
  # misc gui
  - zathura
  - vlc
  - virtualbox
  - gparted
  - keepassx
  # misc terminal
  - htop
  - mc
  - tree
  - wget
  - curl
  - aria2
  - rtorrent
  # mail
  - icedove
  - enigmail
  # office
  - libreoffice
  - texmaker
  # web
  - flashplugin-nonfree
  - xul-ext-pentadactyl
  - xul-ext-adblock-plus
  - xul-ext-firebug
  - xul-ext-https-everywhere
  - xul-ext-noscript
  # dev
  - git-gui
  - postgresql
  - postgresql-client
  # security
  - wireshark
  - nmap
  {% if grains['host'] == 'urban-sprawl' -%}
  - firmware-iwlwifi
  {%- endif %}
  # misc
  - vim-gui-common # for xterm_clipboard support
  - python-dev # for compiling YouCompleteMe vim plugin
  - cmake # for compiling YouCompleteMe vim plugin
