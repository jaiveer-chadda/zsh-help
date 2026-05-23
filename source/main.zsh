#!/usr/bin/env zsh

zsh-help() {

  local -r page="$( cat ../resources/typeset )" #| head -n $(( LINES - 3 )) )"

  local -a lines=( "${(@f)page}" )
  local -ri 10 linecount=${#lines}


  local i
  for i in {1..$linecount}; {
    # lines[i]="${(*)lines[i]/# (#c14)/→→}"
    # lines[i]="${(*)lines[i]/# (#c7)/→}"
  }

  local final="${(F)lines}"
  # maybe put this in a loop
  # final="${final//$'\n'→→/→→}"
  # final="${final//$'\n'→→/→→}"

  tput rmam
  echo "$final"
  tput smam

}

if [[ $ZSH_EVAL_CONTEXT == 'toplevel' ]] zsh-help "$@"


# spell:ignoreRegExp /(?<=tput +)\w+/g
