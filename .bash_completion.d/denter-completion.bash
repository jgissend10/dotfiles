#/usr/bin/env bash
_denter_completions()
{
  COMPREPLY=($(compgen -W "$(docker ps --format {{.Names}})" "${COMP_WORDS[1]}"))
}

complete -F _denter_completions denter
