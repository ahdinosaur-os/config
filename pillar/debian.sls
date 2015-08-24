debian:
  release: jessie
  sources: 
    - src: http://ftp.us.debian.org/debian/
      dist: jessie
      comps: ['main', 'contrib', 'non-free']
    - src: http://security.debian.org/
      dist: jessie/updates
      comps: ['main', 'contrib', 'non-free']
    - src: http://ftp.us.debian.org/debian/
      dist: jessie-updates
      comps: ['main', 'contrib', 'non-free']
    - src: http://ftp.us.debian.org/debian/
      dist: jessie-backports
      comps: ['main', 'contrib', 'non-free']
    - src: http://ftp.us.debian.org/debian/
      dist: stretch
      comps: ['main', 'contrib', 'non-free']
