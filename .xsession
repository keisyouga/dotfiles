export LANG=ja_JP.UTF-8
export XMODIFIERS=@im=uim
#export UIM_CANDWIN_PROG=uim-candwin-gtk3
#uim-xim &
#export XMODIFIERS=@im=uim
#export GTK_IM_MODULE=uim
#export GTK_IM_MODULE=xim
#uim-toolbar-gtk &
#uim-toolbar-gtk3 &

xrdb -remove
xterm -g +0+0 &
xterm -g -0+0 +rv &
xterm -g -0-0 -rv &
#exec jwm
#exec ctwm
exec icewm
