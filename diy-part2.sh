# Modify default IP
sed -i 's/192.168.1.1/192.168.50.3/g' package/base-files/files/bin/config_generate
# alist
rm -rf /feeds/kenzo/alist
git clone https://github.com/sbwml/luci-app-alist package/alist
