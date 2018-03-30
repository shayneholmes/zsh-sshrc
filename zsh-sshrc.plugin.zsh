_sshrc_wrapper () {
  if [ $# = 1 ]; then
    # no commands; gimme an sshrc shell
    sshrc "$@"
  else
    # commands (maybe); just run ssh directly
    ssh "$@"
  fi
}

compdef _sshrc_wrapper=ssh
alias ssh="_sshrc_wrapper"
