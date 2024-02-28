# Modify default IP
sed -i 's/192.168.1.1/192.168.50.3/g' package/base-files/files/bin/config_generate
# alist
rm -rf /feeds/kenzo/alist
rm -rf /feeds/kenzo/luci-app-alist
git clone https://github.com/sbwml/luci-app-alist package/alist
# v2raya
rm -rf /feeds/kenzo/v2raya
rm -rf /feeds/kenzo/luci-app-v2raya
git clone https://github.com/v2rayA/v2raya-openwrt.git package/v2raya
