This repository deposits my dotfiles.

To use these files out of box, your system should be configured as:
1. Have zsh installed.
2. Have Oh-My-Zsh installed.
3. For non-root installation, install the applications into $HOME/apps (so that the executables are located at, for example: $HOME/apps/miniconda3/bin/conda, $HOME/apps/gaussian/g16/g16.exe, $HOME/apps/gromacs2019.3/bin/GMXRC, and so on).
4. Create executable soft-links in $HOME/.bin. For example, run *ln -s $HOME/apps/multiwfn-mirror/Multiwfn $HOME/.bin/multiwfn*.

zshrc: copy to *$HOME/.zshrc*.
This file is sourced in an interactive shell (usually when you login). Source Oh-My-Zsh here. 

zshenv: copy to *$HOME/.zshenv*.
This file is sourced in all types of shells. I define PATH and load miniconda here.

apps.d: copy to *$HOME/.apps.d*.
This folder holds application-specific settings. I source them in zshrc.

alias: copy to *$HOME/.alias*. 
Alias for ssh logins. The content is very specific to me. You should either delete it or make your own. I set *XXX=User@IP* as a variable, so that I can use scp easily (e.g.: *scp $XXX:~/myfile .*, *scp myfile $XXX:~/*).

spacemacs: copy to *$HOME/.spacemacs*.
Ignore this if you have never heard about it.

