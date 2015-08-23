users:
  michael:
    fullname: Michael Williams
    sudouser: True
    groups:
      - sudo
      - users
      - dialout
      - rvm
      - cdrom
      - audio
      - pulse
      - video
      - plugdev
      - scanner
      - bluetooth
      - netdev
      - docker
      - vboxusers
      {% if grains['host'] == 'pineapple-express' -%}
      - bumblebee
      {%- endif %}
      - wireshark
    shell: /bin/zsh
