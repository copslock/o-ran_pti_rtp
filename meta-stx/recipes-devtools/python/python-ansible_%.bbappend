#
## Copyright (C) 2019 Wind River Systems, Inc.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

HOMEPAGE = "https://github.com/ansible/ansible/"
SECTION = "devel/python"
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://COPYING;md5=8f0e2cd40e05189ec81232da84bd6e1a"

PV = "2.8.5"

SRCNAME = "ansible"

SRC_URI = "http://releases.ansible.com/ansible/${SRCNAME}-${PV}.tar.gz"

SRC_URI[md5sum] = "86f0c18250895338709243d997005de3"
SRC_URI[sha256sum] = "8e9403e755ce8ef27b6066cdd7a4c567aa80ebe2fd90d0ff8efa0a725d246986"


S = "${WORKDIR}/${SRCNAME}-${PV}"

CLEANBROKEN = "1"

ANSIBLE_WHITELIST_MODULES = "  \
	cloud \
	clustering \
	commands \
	database \
	files \
	identity \
	inventory \
	messaging \
	monitoring \
	net_tools \
	network \
	notification \
	packaging \
	remote_management \
	source_control \
	storage \
	system \
	utilities \
	web_infrastructure \
	"
