#!/bin/bash

echo -n "[+] Installing dotfiles: "
files=$(find . -maxdepth 1 -type f -not \( -iname '*.sh' -o -iname '*.md' -o -iname '\.*' \) -exec basename {} \;)
for f in $files; do
  echo -n "${f} "
  rm "${HOME}/.${f}" 2> /dev/null
  ln -s "${PWD}/$f" "${HOME}/.${f}"
done

if [ "$(uname -s)" == "Linux" ]; then
  echo -e -n "\n[+] Installing configs: "
  # install i3 and rofi configs
  for c in i3 rofi; do
    echo -n "${c} "
    rm ~/.config/${c}/config 2> /dev/null
    if [ ! -d ${HOME}/.config/${c} ]; then
      mkdir -p ${HOME}/.config/${c}
    fi
    ln -s ${PWD}/${c}/config ${HOME}/.config/${c}/config
  done
fi

# install ssh config
echo -e "ssh"
rm ${HOME}/.ssh/config
ln -s ${PWD}/ssh/config ${HOME}/.ssh/config

echo "[+] Configuring Git."
# configure git
git config --global core.excludesfile ~/.gitignore
git config --global core.editor vim
git config --global help.autocorrect 1
git config --global pull.rebase false

echo -e "[+] Done\n"
