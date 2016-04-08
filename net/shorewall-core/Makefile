#
# Copyright (C) 2008-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

_VER_MAJOR:=5
_VER_MIDDLE:=.0
_VER_MINOR:=.7
_VER_PLEVEL:=.2
_SRCDIR:=$(_VER_MAJOR)$(_VER_MIDDLE)/shorewall-$(_VER_MAJOR)$(_VER_MIDDLE)$(_VER_MINOR)/

PKG_NAME:=shorewall-core
PKG_VERSION:=$(_VER_MAJOR)$(_VER_MIDDLE)$(_VER_MINOR)$(_VER_PLEVEL)
##PKG_DIRECTORY:=$(PKG_VERSION)
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://www.shorewall.net/pub/shorewall/$(_SRCDIR)/ \
	http://baltimore.shorewall.net/pub/shorewall/$(_SRCDIR)/ \
	http://slovakia.shorewall.net/pub/shorewall/$(_SRCDIR)/ \
	http://www.shorewall.fi/pub/shorewall/$(_SRCDIR)/ \
	http://shorewall.de/pub/shorewall/$(_SRCDIR)/ \
	http://shorewall.no/pub/shorewall/$(_SRCDIR)/ \
	http://shorewall.org/pub/shorewall/$(_SRCDIR)/ \
	http://france.shorewall.net/pub/shorewall/$(_SRCDIR)/ \
	http://www.shorewall.com.au/$(_SRCDIR)/ \
	http://canada.shorewall.net/pub/shorewall/$(_SRCDIR)/
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

## CONFIGURE_ARGS += \
##	vendor=linux

# Disable calling make
define Build/Compile
endef

# Disable calling ./configure
define Build/Configure
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
