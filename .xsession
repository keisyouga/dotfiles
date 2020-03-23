export LANG=ja_JP.UTF-8
export XMODIFIERS=@im=uim
export UIM_CANDWIN_PROG=uim-candwin-gtk3
#uim-xim &
export GTK_IM_MODULE=uim
#export GTK_IM_MODULE=xim
#uim-toolbar-gtk &
#uim-toolbar-gtk3 &

setxkbmap -model jp106 -layout jp,us,ru,gr -variant ,intl -option grp:shifts_toggle

if [ -d $HOME/fonts ] ; then
	xset fp+ $HOME/fonts
fi

xrdb -remove
#xterm -g -0+0 +rv &
xterm -g +0+0 -rv &

#exec jwm
#exec twm
exec ctwm
#exec vtwm
#exec icewm
#exec startfluxbox
#fspanel &
#exec openbox
#exec openbsd-cwm
#exec dwm
#exec i3
#exec awesome
