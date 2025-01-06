default:
    @just --list --unsorted

stow:
    stow --target=$HOME --dotfiles .

adopt:
    stow --target=$HOME --dotfiles --adopt .
