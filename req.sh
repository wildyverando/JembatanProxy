#!/bin/bash
#
#  JembatanProxy
#  Berfungsi untuk meneruskan traffic 80/443 ke suatu proxy server
#
#  Author : Wildy Sheverando <wildy@wildyverando.com>
#  Repo   : https://github.com/wildyverando/JembatanProxy
#
#  This Project Licensed under MIT License
#  https://raw.githubusercontent.com/wildyverando/JembatanProxy/main/LICENSE
# ------------------------------------------------------------------------------

# >> Check sudoer
if ! [[ $(whoami) == 'root' ]]; then
  echo "Silakan jalankan program ini dalam root"
  exit
fi

# >> Check installation command
if command -V apt > /dev/null 2>&1; then
  export SEPUH="apt"
elif command -V dnf > /dev/null 2>&1; then
  export SEPUH="dnf"
else
  echo "Script ini tidak mendukung os anda, silakan install iptables dan requirements secara manual"
  exit
fi

# >> Install
$SEPUH update -y; $SEPUH upgrade -y
$SEPUH install iptables -y

# >> Done
echo "Installasi berhasil."
