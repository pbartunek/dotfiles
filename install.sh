#!/bin/bash

echo "Installing dotfiles:"
files=$(find . -maxdepth 1 -type f -not \( -iname '*.sh' -o -iname '*.md' -o -iname '\.*' \) -exec basename {} \;)
for f in $files; do
  echo -n "${f} "
  rm "${HOME}/.${f}" 2> /dev/null
  ln -s "${PWD}/$f" "${HOME}/.${f}"
done

if [ "$(uname -s)" == "Linux" ]; then
  echo -e "\nInstalling: "
  # install i3 and rofi configs
  for c in i3 rofi; do
    echo -n "${c} "
    rm ~/.config/${c}/config 2> /dev/null
    if [ ! -d ${HOME}/.config/${c} ]; then
      mkdir -p ${HOME}/.config/${c}
    fi
    ln -s ${PWD}/${c}/config ${HOME}/.config/${c}/config
  done
  echo
fi

# configure git
git config --global core.excludesfile ~/.gitignore
git config --global core.editor vim

git config --global help.autocorrect 1
