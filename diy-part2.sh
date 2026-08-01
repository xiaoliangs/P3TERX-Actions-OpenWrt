#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate



rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
git clone https://github.com/Openwrt-Passwall/openwrt-passwall-packages package/passwall-packages

rm -rf feeds/luci/applications/luci-app-passwall
git clone https://github.com/Openwrt-Passwall/openwrt-passwall package/passwall-luci

mkdir -p package/custom

# 克隆你的插件到 package/custom 目录
git clone https://github.com/aopkcn/luci-app-ddns-go package/custom/luci-app-ddns-go
git clone https://github.com/4IceG/luci-app-sms-tool-js.git package/custom/luci-app-sms-tool-js
git clone https://github.com/stackia/rtp2httpd.git package/custom/rtp2httpd
git clone https://github.com/sirpdboy/luci-app-partexp.git package/custom/luci-app-partexp
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/custom/OpenClash
git clone --depth 1 https://github.com/cokebar/luci-app-vlmcsd.git package/custom/luci-app-vlmcsd
git clone https://github.com/sirpdboy/netspeedtest package/custom/netspeedtest
git clone https://github.com/gdy666/luci-app-lucky.git package/custom/luci-app-lucky
git clone https://github.com/f8q8/luci-app-autoreboot package/custom/autoreboot
git clone https://github.com/cokebar/openwrt-vlmcsd.git package/custom/vlmcsd
