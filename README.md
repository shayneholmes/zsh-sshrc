# sshrc for zsh

# What it does

This is a wrapper around [sshrc](https://github.com/Russell91/sshrc); if `ssh`
is called with more than just a hostname, it will pass control onto the
existing `ssh` command and run that; otherwise, it will run an interactive
terminal, using `sshrc`.

