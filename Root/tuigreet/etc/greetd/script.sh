#!/bin/bash
/bin/setvtrgb /etc/vtrgb-tty
exec tuigreet --time --time-format '%I:%M %p %a, %b %d' --asterisks --remember --remember-user-session --user-menu \
--theme 'border=magenta;text=cyan;prompt=green;time=white;action=blue;button=yellow;container=black;input=sky' \
--sessions /usr/share/wayland-sessions:/usr/share/xsessions
