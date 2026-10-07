# revue

AI pull request reviews in your terminal, where you decide what gets posted.

This repo holds revue's releases and its Homebrew formula. The source code is private.

## Install

```sh
brew install SuShAnTBiShT407/revue/revue
revue
```

The first run walks you through setup: your code host (GitHub or Bitbucket), optional Jira/Confluence, your AI agent, and the repos you review.

## Update

revue tells you when a new version is out. Then:

```sh
revue update        # same as: brew upgrade revue
```

## Without Homebrew

Download the file for your machine from [Releases](../../releases/latest), unpack it, and put `revue` on your PATH. On macOS, a downloaded file is quarantined; clear it once with `xattr -d com.apple.quarantine revue`. (Homebrew installs don't need this.)
