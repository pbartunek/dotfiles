#!/bin/bash

files=$(find . -maxdepth 1 -type f -not \( -iname '*.sh' -o -iname '*.md' \) -exec basename {} \;)
echo "Installing dotfiles:" $files
for f in $files; do
  rm "${HOME}/.${f}" 2> /dev/null
  ln -s "${PWD}/$f" "${HOME}/.${f}"
done


if [ "$(uname -s)" == "Linux" ]; then

  for c in i3 rofi; do
    echo "Installing ${c} config"
    rm ~/.config/${c}/config 2> /dev/null
    if [ ! -d ${HOME}/.config/${c} ]; then
      mkdir -p ${HOME}/.config/${c}
    fi
    ln -s ${PWD}/${c}/config ${HOME}/.config/${c}/config
  done

  # get seccomp profile for containers running chrome/chromium 
  if [ ! -f ${HOME}/containers/chrome/chrome.json ]; then
    mkdir -p ${HOME}/containers/chrome
    wget https://raw.githubusercontent.com/jfrazelle/dotfiles/master/etc/docker/seccomp/chrome.json -O ${HOME}/containers/chrome/chrome.json
  fi
fi
