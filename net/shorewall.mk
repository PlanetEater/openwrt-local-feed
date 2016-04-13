#
# Copyright (C) 2008-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

_VER_MAJOR:=5.0
_VER_MINOR:=.7
_VER_PLEVEL:=.2
_SRCPATH:=$(_VER_MAJOR)/shorewall-$(_VER_MAJOR)$(_VER_MINOR)/
PKG_VERSION:=$(_VER_MAJOR)$(_VER_MINOR)$(_VER_PLEVEL)

PKG_SOURCE_URL:=http://www.shorewall.net/pub/shorewall/$(_SRCPATH)/ \
	http://baltimore.shorewall.net/pub/shorewall/$(_SRCPATH)/ \
	http://slovakia.shorewall.net/pub/shorewall/$(_SRCPATH)/ \
	http://www.shorewall.fi/pub/shorewall/$(_SRCPATH)/ \
	http://shorewall.de/pub/shorewall/$(_SRCPATH)/ \
	http://shorewall.no/pub/shorewall/$(_SRCPATH)/ \
	http://shorewall.org/pub/shorewall/$(_SRCPATH)/ \
	http://france.shorewall.net/pub/shorewall/$(_SRCPATH)/ \
	http://www.shorewall.com.au/$(_SRCPATH)/ \
	http://canada.shorewall.net/pub/shorewall/$(_SRCPATH)/

