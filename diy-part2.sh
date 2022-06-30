#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.254/g' package/base-files/files/bin/config_generate
#smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git
mv openwrt-smartdns/ package/smartdns 
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git 
mv luci-app-smartdns/ package/
#vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git 
git clone https://github.com/jerrykuku/luci-app-vssr.git 
mv luci-app-vssr/ package/
mv lua-maxminddb/ package/
