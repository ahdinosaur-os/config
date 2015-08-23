git:
  config:
    user:
      email: michael.williams@enspiral.com
      name: Michael Williams
    core:
      editor: vim
    merge:
      tool: vimdiff
    push:
      default: simple
    alias:
      aliases: "config --global --get-regexp alias[.]"
      fall: "fetch --all --prune"
      up: "pull --ff --ff-only"
      ff: "merge --ff --ff-only"
      purr: "pull --rebase"
      standup: "!git log -since yesterday -author `git config user.email` -pretty=short"
      start: "checkout --track origin/master -b"
      ready: "rebase -i @{u}"
      blog: "log HEAD@{upstream}..HEAD"
      bsummary: "log --oneline HEAD@{upstream}..HEAD"
      bdiff: "diff HEAD@{upstream}...HEAD"
      publish: "!git push \"${USER}\" +HEAD"
      accept: "merge --no-ff"
      rewrite: "rebase --interactive --onto HEAD...@{upstream}"
      sever: "checkout --detach"
      this: "add --all :/"
      these: "add --all ."
      amend: "commit --amend --no-edit"
      fixup: "commit --fixup"
      lol: "log --graph --oneline --decorate"
