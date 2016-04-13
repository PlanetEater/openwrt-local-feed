#
# Copyright (C) 2008-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include ../shorewall.mk

PKG_NAME:=shorewall-core
PKG_RELEASE:=1
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_MD5SUM:=05cb5b936713e074c2da8f02100d3d23

include $(INCLUDE_DIR)/package.mk

define Package/shorewall-core
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+ip +iptables +perl +perlbase-digest
  TITLE:=Shorewall Core
  URL:=http://www.shorewall.net/
  SUBMENU:=Firewall
endef

define Package/shorewall-core/description
	The Shoreline Firewall, is high-level tool for configuring Netfilter.
	This package provides the core Shorewall libraries installed in /usr/share/shorewall/,
	which are required for the rest of the Shorewall packages to work.
endef

define Package/shorewall-core/conffiles
	/usr/share/shorewall/shorewallrc
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

define Package/shorewall-core/install
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/shorewall $(1)/usr/share
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/share/shorewall/wait4ifup $(1)/usr/share/shorewall/
endef

$(eval $(call BuildPackage,shorewall-core))
