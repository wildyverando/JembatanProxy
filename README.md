# JembatanProxy
JembatanProxy berfungsi untuk meneruskan traffic 80/443 ke suatu proxy server

# Packages yang dipakai
- iptables
- wget

# Packages yang dibutuhkan
```bash
wget -O req.sh https://raw.githubusercontent.com/wildyverando/JembatanProxy/main/req.sh && bash req.sh
```
Command di atas hanya mendukung untuk sistem operasi berbasis debian dan rhel

# Unduh Program
```bash
wget -O /usr/bin/jembatanproxy 'https://raw.githubusercontent.com/wildyverando/JembatanProxy/main/jembatanproxy'
chmod 700 /usr/bin/jembatanproxy
```

# Lisensi
This Project Licensed Under The MIT License
