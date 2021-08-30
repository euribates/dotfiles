# dotfiles

Several dot files I use.

This uses the yadm: [Yet Another Dotfile Manager](https://yadm.io/docs)

From the YADM docs:

### Getting Started

Starting out with yadm should be just a few easy steps.

1) If you don’t currently have a repository 

Start out with an empty local repository

```
yadm init
yadm add <important file>
yadm commit
```

Eventually you will want to push the local repo to a remote.

```
yadm remote add origin <url>
yadm push -u origin master
```

2) If you have an existing remote repository

Clone your existing repo using `yadm`.

```
yadm clone <url>
yadm status
```

The `clone` command will attempt to check out all files that exist in the repository. If a file
already exists locally and has content that differs from the one in the repository, the
local file will be left unmodified and you’ll have to review and resolve the differences.

That’s all it takes to start. Now most Git commands can be used as yadm <git command>. Read
about common commands for ideas.
