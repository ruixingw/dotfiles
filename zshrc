# Z-Shell startup files.
# Global order ($ZDOTDIR defaults to $HOME): 
# /etc/zsh/zshenv, $ZDOTDIR/.zshenv       Always sourced.
# /etc/zsh/zprofile, $ZDOTDIR/.zprofile   Login shell only.
# /etc/zsh/zshrc, $ZDOTDIR/.zshrc         Interactive shell only.
# /etc/zsh/zlogin, $ZDOTDIR/.zlogin       Login shell only.
# /etc/zsh/zlogout, $ZDOTDIR/.zlogout     Login shell only. Executed at logout.

# ZSHRC
# This file is sourced in interactive shells only.
# Do NOT include PATH in zshrc, as they are not read when running a non-interactive shell (e.g, when running a script).

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
HIST_STAMPS="mm/dd/yyyy"
ZSH_THEME="ys"
plugins=(git cp common-aliases autojump)
source $ZSH/oh-my-zsh.sh

# source application specific settings
if test -d $HOME/.apps.d/; then
	for app in $HOME/.apps.d/*.sh; do
		test -r "$app" && . "$app"
	done
	unset app
fi
