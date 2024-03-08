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
sed -i 's/192.168.6.1/192.168.1.1/g' package/base-files/files/bin/config_generate
sed -i '238a\lsmod | grep -q mtkhnat && rmmod mtkhnat' feeds/luci/applications/luci-app-turboacc/root/etc/init.d/turboacc
# close ssr or openclash
sed -i '202,206d' package/luci-theme-design/luasrc/view/themes/design/header.htm
