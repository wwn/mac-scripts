#!/bin/zsh

brew update
brew outdated

for formula in $(brew list --formula); do
    brew upgrade "$formula"
done

for cask in $(brew list --cask); do
    brew upgrade --cask "$cask"
done

brew cleanup

brew list --versions
