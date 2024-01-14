#!/system/bin/sh

MODDIR=${0%/*}

# Membuat struktur direktori
ui_print "Creating directory for server PocketMine-MP on /data/local/pmmp"
mkdir -p "/data/local/pmmp"

# Menyalin seluruh folder pmmp
ui_print "Copy all files to pmmp"
cp -r "$MODDIR/pmmp" "/data/local/pmmp"

# Berikan izin eksekusi secara rekursif pada seluruh folder pmmp
ui_print "Giving chmod permission"
chmod +x -R "/data/local/pmmp"

# Berikan izin eksekusi pada start.sh
ui_print "Giving chmod permission for start.sh"
chmod +x "/data/local/pmmp/start.sh"

# (Opsional) Menyalin start-pmmp
ui_print "Copy start-pmmp shell script to /system/bin"
cp "$MODDIR/start-pmmp" "/system/bin"

# (Opsional) Berikan izin eksekusi pada start-pmmp
ui_print "Giving chmod permission for start-pmmp"
chmod +x "/system/bin/start-pmmp"

# Teks tambahan
ui_print "Done - Reboot to take effect"
