#!/bin/bash -x

HOME_DIR=/etc/skel
cd files/desktop
cp -a Bluediance /usr/share/themes
cp -a .config .gtkrc-2.0 .local 桌面 $HOME_DIR/
#以root身份打开文件夹时需要设置文件管理器默认的长宽
mkdir -p /root/.config
cp -a .config /root/
cp light-blue.jpg /usr/share/backgrounds/xfce/light-blue.jpg
cp xfce4-whiskermenu-plugin.mo /usr/share/locale/zh_CN/LC_MESSAGES/
rm $HOME_DIR/examples.desktop
#更改gedit和gtkhash的默认设置
cp .profile .gsettings-override $HOME_DIR
chmod a+x $HOME_DIR/.gsettings-override
#livecd中桌面的安装启动器去掉ubuntu字样 
cp ubiquity.desktop /usr/share/applications/
cd ../..
