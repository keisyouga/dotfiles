export LANG=ja_JP.UTF-8
xrdb -remove
xterm -g +0+0 &
xterm -g -0+0 +rv &
xterm -g -0-0 -rv &
exec jwm
