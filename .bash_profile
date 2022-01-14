#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# This starts the X Server from the tty login, as soon as the login credentials are entered.
if [ -z  "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
