# Create by Pound
clear
##
figlet "Install Metasploit" | lolcat
##
# update
update() {
          apt update -y && apt upgrade -y
}
##
# install packet
Packet() {
          pkg install wget -y
          pkg install postgresql -y
          pkg install openssh -y
          pkg install curl -y
          pkg install git -y
          pkg install python -y && pkg install python2 -y
}
Comman() {
          wget https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh
          chmod +x "metasploit.sh"
          echo "===================================================="
          ./metasploit.sh
          clear
          mv m /data/data/com.termux/files/usr/bin
          chmod +x /data/data/com.termux/files/usr/bin/m
          rm /data/data/com.termux/files/usr/etc/bash.bashrc
          rm /data/data/com.termux/files/usr/etc/motd
          mv bash.bashrc /data/data/com.termux/files/usr/etc
          cat "banner1.txt" | lolcat
}
##
update
Packet
Comman
