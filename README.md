# homebrew-parallelane

Homebrew tap for [ParalleLane](https://parallelane.com/), a worktree-first Git GUI client. ParalleLane lets people and AI coding agents work on many branches at once, each in its own worktree, without stepping on each other.

## Install

```sh
brew install --cask yeosu0107/parallelane/parallelane
```

Or add the tap first, then install by the short name:

```sh
brew tap yeosu0107/parallelane
brew install --cask parallelane
```

## Update

ParalleLane ships with an in-app updater, so the app keeps itself current. Because of that the cask sets `auto_updates true` and `brew upgrade` skips it. To force a fresh download through Homebrew anyway:

```sh
brew upgrade --cask --greedy parallelane
```

## Uninstall

```sh
brew uninstall --cask parallelane
```

Add `--zap` to remove settings and caches as well:

```sh
brew uninstall --cask --zap parallelane
```

## Requirements

- macOS 10.15 (Catalina) or later
- Apple Silicon and Intel (universal binary)

## Links

- Homepage: https://parallelane.com/
- Documentation: https://docs.parallelane.com/
- Release notes: https://docs.parallelane.com/releases
- Bugs and feedback: https://github.com/yeosu0107/parallelane-tracker
