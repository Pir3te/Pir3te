#!/usr/bin/env bash
cd $HOME/Pir3te
rm -rf $HOME/.telegram-cli
install() {
rm -rf $HOMEX/.telegram-cli
sudo chmod +x tg
chmod +x Pir3te
chmod +x ts
./ts
}
if [ "$1" = "ins" ]; then
install
fi
chmod +x install.sh
lua start.lua
