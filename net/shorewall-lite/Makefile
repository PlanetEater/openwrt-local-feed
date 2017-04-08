#
# Copyright (C) 2008-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include ../shorewall.mk

PKG_NAME:=shorewall-lite
PKG_RELEASE:=1
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_MD5SUM:=cf10786e1a41a68fd19eb9816d6a1662

include $(INCLUDE_DIR)/package.mk

define Package/shorewall-lite
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+ip +iptables +shorewall-core
  TITLE:=Shorewall Lite
  URL:=http://www.shorewall.net/
  SUBMENU:=Firewall
endef

define Package/shorewall-lite/description
	The Shoreline Firewall, is high-level tool for configuring Netfilter.

	Shorewall allows for central administration of multiple IPv4 firewalls
	through use of Shorewall lite. The full Shorewall product is installed
	on a central administrative system where compiled Shorewall scripts are
	generated. These scripts are copied to the firewall systems where they
	run under the control of Shorewall-lite.
endef

define Package/shorewall-lite/conffiles
	/etc/$(PKG_NAME)/shorewall-lite.conf
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

define Package/shorewall-lite/install
	$(INSTALL_DIR) $(1)/sbin
	$(CP) $(PKG_INSTALL_DIR)/sbin/$(PKG_NAME) $(1)/sbin/
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_BIN) ./files/hotplug_iface $(1)/etc/hotplug.d/iface/05-shorewall-lite
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/$(PKG_NAME) $(1)/usr/share
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/{init.d,$(PKG_NAME),sysconfig} $(1)/etc
# create VARDIR
	$(INSTALL_DIR) $(1)/lib/$(PKG_NAME)
endef

$(eval $(call BuildPackage,shorewall-lite))
