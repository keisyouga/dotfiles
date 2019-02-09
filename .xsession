export LANG=ja_JP.UTF-8
export XMODIFIERS=@im=uim
uim-xim &

xrdb -remove
xterm -g +0+0 &
xterm -g -0+0 +rv &
xterm -g -0-0 -rv &
#exec jwm
exec ctwm
