default:
    @just --list --unsorted

dryrun:
    stow --target=$HOME --dotfiles --simulate .

stow:
    stow --target=$HOME --dotfiles .

adopt:
    stow --target=$HOME --dotfiles --adopt .
