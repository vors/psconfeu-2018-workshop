# PlatyPS: from 0 to 1 and beyond

This repo contains materials for the [platyPS](https://github.com/PowerShell/platyPS) workshop.

## Prerequisites

You can use any platform (Windows, macOS, Linux) and any PowerShell edition (Full, Core).
Not all features of platyPS may be fully compatible with some old PowerShell versions.
For the full edition, v5.1 (latest) is recommended.

### Git

If you haven't used `git` before, please follow the [git basics](https://github.com/PowerShell/PowerShell/blob/48be62537933cf3ca3c9866f3acfa931acac2587/docs/git/basics.md) guide.

### GitHub

Please, register a [GitHub account]( https://github.com/join) and set it up,
so you can push your code there.

### Markdown

If you haven't used markdown before, please read the [learn markdown in 60 seconds](http://commonmark.org/help/) guide.


### PlatyPS

Install platyPS locally

```powershell
Install-Module -Scope CurrentUser platyPS
```

### AppVeyor

If you are not familiar with Continuous Integration or AppVeyor [here](http://ramblingcookiemonster.github.io/GitHub-Pester-AppVeyor/) is a great write-up by @ramblingcookiemonster.

## How to use

Clone the repo to your machine **before** the workshop.

```
git clone https://github.com/vors/psconfeu-2018-workshop
```

The workshop is broken down into the sections, you should follow them in order.
Every section is represented by a `nn-SectionName.md` file that talks about the concepts and
walks you through the exercise to master them.
Every section assumes that your `pwd` is the root of the repo.

### [Start Here](01-Bootstrap.md)
