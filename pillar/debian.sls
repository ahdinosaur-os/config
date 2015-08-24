debian:
  release: jessie
  sources: 
    - url: http://ftp.nz.debian.org/debian/
      distribution: jessie
      components: ['main', 'contrib', 'non-free']
    - url: http://security.debian.org/
      distribution: jessie/updates
      components: ['main', 'contrib', 'non-free']
    - url: http://ftp.nz.debian.org/debian/
      distribution: jessie-updates
      components: ['main', 'contrib', 'non-free']
    - url: http://ftp.nz.debian.org/debian/
      distribution: jessie-backports
      components: ['main', 'contrib', 'non-free']
    - url: http://ftp.nz.debian.org/debian/
      distribution: stretch
      components: ['main', 'contrib', 'non-free']
