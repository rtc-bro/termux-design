#!/usr/bin/bash

echo ""
read -p $' \e[0m\e[1;92m INPUT YOUR USERNAME FOR BANNER : \e[0m\e[1;96m\en' user1


read -p $' \e[0m\e[1;92m INPUT YOUR USERNAME FOR WELCOME: \e[0m\e[1;96m\en' user
echo ""
echo ""
echo -e  $g "PLEASE  WAIT  A FEW MINUTES..! "
echo ""
apt update 
apt upgrade -y 
pkg install figlet -y
pkg install python
pip install pyfiglet
pip install termcolor
pkg install ncurses-utils -y 
pkg install ruby -y 
gem install lolcat 
figlet -f big Wait | lolcat

rm -rf $PREFIX/etc/ray.txt
while true
do
  read -p 'SET PASSWORD :' ray
  read -sp 'CONFIRM YOUR PASSWORD:' ray2
  if [[ $ray == $ray2 ]]
    then
    touch $PREFIX/etc/ray.txt
    printf $ray2 > $PREFIX/etc/ray.txt
    cd $PREFIX/etc
     xp=$(cat ray.txt)
     echo -e "\033[1;92m$xp IS YOUR PASSWORD"
    break
  else
    echo -e "\033[1;31mPASSWORD NOT MATCHING..!"
    echo -e "\033[1;92mTYPE AGAIN"
###File Create
  fi 
done
tp='[2. ]┌───T─I─M─E───┐┌───D─A─T─E────>

┌─[ 00:00 PM ]──[ D M Y ]
├─[~]
└─>theboog3yman[~]:#
'
tpp='[1. ]~$'
echo $tpp |lolcat
echo $tp |lolcat

echo -e "\033[1;92mCHOSE YOUR DESIGN TYPE : "
read -p ">>" ray
if [[ $ray == '1' ]]
then
 git clone https://github.com/theboog3yman/nopebro
  cd nopebro
   mv loding.sh /data/data/com.termux/files/usr/etc
  cd $PREFIX/etc
  sed 's+RTB+'$user1'+g' nopebro/bash.bashrc > /data/data/com.termux/files/usr/etc/bash.bashrc
   
  sed 's+RTB3+'$user'+g' nopebro/welcome_AangEnc.py > /data/data/com.termux/files/usr/etc/welcome_AangEnc.py
  rm -rf nopebro
elif [[ $ray == '2' ]]
then
  git clone https://github.com/theboog3yman/nopebro
  cd nopebro
  mv  Loding.sh /data/data/com.termux/files/usr/etc
  cd $PREFIX/etc
  sed 's+RTB+'$user1'+g' nopebro/bash.bashrc > /data/data/com.termux/files/usr/etc/bash.bashrc
  sed 's+RTB3+'$user'+g' nopebro/welcome_AangEnc.py > /data/data/com.termux/files/usr/etc/welcome_AangEnc.py
  rm -rf nopebro
fi
figlet -f slant RTB | lolcat
figlet -f small RTB_RAYHAN | lolcat
echo -e '\033[0;0m'
