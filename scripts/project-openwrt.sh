#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.253/g' package/base-files/files/bin/config_generate

# Modify default IP to DHCP
# sed -i "38i\uci set network.lan.proto='dhcp'"  package/lean/default-settings/files/zzz-default-settings
# sed -i '39i\uci commit network'  package/lean/default-settings/files/zzz-default-settings

# Modify Default Theme
sed -i '/uci commit luci/i\uci set luci.main.mediaurlbase=/luci-static/argon' package/lean/default-settings/files/zzz-default-settings
