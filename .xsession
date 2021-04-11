export LANG=ja_JP.UTF-8
export XMODIFIERS=@im=uim
#export UIM_CANDWIN_PROG=uim-candwin-gtk3
#uim-xim &
#export GTK_IM_MODULE=uim
export GTK_IM_MODULE=xim
#uim-toolbar-gtk &
#uim-toolbar-gtk3 &

# set keyboard
# model: jp106, layout: jp|us(intl)|ru|gr, switch layout by lshift+rshift
# see also xkeyboard-config(7)
setxkbmap -model jp106 -layout jp,us,ru,gr -variant ,intl -option grp:shifts_toggle

# add font path
if [ -d $HOME/fonts ] ; then
	xset fp+ $HOME/fonts
fi

# for using ~/.Xdefaults, remove all resources
xrdb -remove

# x terminal emulator
#xterm -g -0+0 +rv &
xterm -g +0+0 -rv &

# window manager
type icewm && exec icewm
#exec jwm
#exec twm
#exec ctwm
#exec vtwm
#exec startfluxbox
#fspanel &
#exec openbox
#exec openbsd-cwm
#exec dwm
#exec i3
#exec awesome
xterm
