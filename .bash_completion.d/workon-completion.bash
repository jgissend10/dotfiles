#/usr/bin/env bash
_workon_completions()
{
  COMPREPLY=($(compgen -W "$(list-projects)" "${COMP_WORDS[1]}"))
}

complete -F _workon_completions workon
