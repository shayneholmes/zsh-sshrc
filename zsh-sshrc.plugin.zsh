if [ -z $_color_wrapper ]; then
  _color_wrapper="_color_from_params"
fi

_sshrc_wrapper () {
  if [ $# = 1 ]; then
    # no commands; gimme an sshrc shell
    $_color_wrapper sshrc "$@"
  else
    # commands (maybe); just run ssh directly
    $_color_wrapper ssh "$@"
  fi
}

compdef _sshrc_wrapper=ssh

alias ssh="_sshrc_wrapper"
