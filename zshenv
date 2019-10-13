# Z-Shell startup files.
# Global order ($ZDOTDIR defaults to $HOME): 
# /etc/zsh/zshenv, $ZDOTDIR/.zshenv       Always sourced.
# /etc/zsh/zprofile, $ZDOTDIR/.zprofile   Login shell only.
# /etc/zsh/zshrc, $ZDOTDIR/.zshrc         Interactive shell only.
# /etc/zsh/zlogin, $ZDOTDIR/.zlogin       Login shell only.
# /etc/zsh/zlogout, $ZDOTDIR/.zlogout     Login shell only. Executed at logout.

# ZSHENV
# This file is always sourced. Define $PATH, $EDITOR, etc in this file.

export PATH=$HOME/.bin:$PATH

if [ -f $HOME/.alias ]; then
	source $HOME/.alias
fi

# >>> conda initialize >>>
CONDA_PATH=$HOME/apps/miniconda3
__conda_setup=$("$CONDA_PATH/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)
eval "$__conda_setup"
unset __conda_setup
# <<< conda initialize <<<


