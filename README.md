# dotfiles

Configuration files for my pentesting/bughunting environment, includes various system settings, config files for common tools as well as bunch of shell functions and wrappers around programs to speedup tasks like recon, serving and downloading files, formatting output etc.

## What's in?

* Configuration files for:
  * i3 wm
  * zsh
  * Vim
  * screen
  * ssh
  * rofi
  * others
* Wrapper functions around for running tools in docker containers
* Wrapper functions to handle my git repositories with tools, notes, shell scripts etc.
* Shell functions for:
  * screenshots
  * creating new projects - creating directory structure, starting tools like Burp etc.
  * starting simple web server
  * pretty-formatting files
  * copying files to clipboard from terminal
  * and much more
* Shell functions wrapping CLI tools like:
  * ffuf
  * httpx
  * meg
  * gobuster
  * nmap
  * nuclei
* Shell functions for recon automation
  * enumerating subdomains
  * probing HTTP services
  * screenshots
  * directory brute forcing
  * etc.

## installation

**Warning:** Do not blindly use my settings, please review the code and remove things you don't need or want. Use at your own risk!

`./install.sh` will create symlinks in home directory to files in the repository.


