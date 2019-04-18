if [ -z $_color_wrapper ]; then
  _color_wrapper="_color_from_params"
fi

_sshrc_wrapper () {
  local command
  if [ $# = 1 ]; then
    # no commands; gimme an sshrc shell
    command="sshrc"
  else
    # commands (maybe); just run ssh directly
    command="ssh"
  fi
  $_color_wrapper $command "$@"
}

compdef _sshrc_wrapper=ssh

alias ssh="_sshrc_wrapper"
