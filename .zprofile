# kime
export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS=@im=kime

# sway
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	eval "$(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)"
	export SSH_AUTH_SOCK

	exec sway
fi
