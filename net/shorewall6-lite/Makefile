#
# Copyright (C) 2008-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include ../shorewall.mk

PKG_NAME:=shorewall6-lite
PKG_RELEASE:=1
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_MD5SUM:=11bf66e5ba3574ca04091682eeaa776d
include $(INCLUDE_DIR)/package.mk

define Package/shorewall6-lite
  SECTION:=ipv6
  CATEGORY:=IPv6
  DEPENDS:=+ip +ip6tables +shorewall-core
  TITLE:=Shorewall6 Lite
  URL:=http://www.shorewall.net/
  SUBMENU:=Firewall
endef

define Package/shorewall6-lite/description
	Shoreline Firewall 6 Lite is an iptables-based firewall for Linux systems.
endef

define Package/shorewall6-lite/conffiles
	/etc/$(PKG_NAME)/shorewall6-lite.conf
	/etc/sysconfig/$(PKG_NAME)
endef

# Disable calling make
define Build/Compile
  true
endef

# Disable calling ./configure
define Build/Configure
  true
endef

define Build/Install
        DESTDIR=$(PKG_INSTALL_DIR) HOST=linux $(PKG_BUILD_DIR)/install.sh shorewallrc.openwrt
endef

define Package/shorewall6-lite/install
	$(INSTALL_DIR) $(1)/sbin
	$(CP) $(PKG_INSTALL_DIR)/sbin/$(PKG_NAME) $(1)/sbin/
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_BIN) ./files/hotplug_iface $(1)/etc/hotplug.d/iface/05-shorewall6-lite
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/$(PKG_NAME) $(1)/usr/share
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/{init.d,$(PKG_NAME),sysconfig} $(1)/etc
# create VARDIR
	$(INSTALL_DIR) $(1)/lib/$(PKG_NAME)
endef

$(eval $(call BuildPackage,shorewall6-lite))
