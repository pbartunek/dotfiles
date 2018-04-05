#!/bin/bash

files=$(find . -maxdepth 1 -type f -not -name '*.sh' -exec basename {} \;)
echo "Installing dotfiles:" $files
for f in $files; do
  rm "${HOME}/.${f}" 2> /dev/null
  ln -s "${PWD}/$f" "${HOME}/.${f}"
done


if [ "$(uname -s)" == "Linux" ]; then
  echo "Installing i3 config"
  rm ~/.config/i3/config 2> /dev/null

  if [ ! -d ${HOME}/.config/i3 ]; then
    mkdir -p ${HOME}/.config/i3
  fi

  ln -s ${PWD}/i3/config ${HOME}/.config/i3/config
fi
