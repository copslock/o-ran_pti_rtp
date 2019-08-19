FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

do_compile_prepend() {
    unset GOCACHE
}

do_install_append() {
    sed -i '/ExecStart=/a ExecStartPost=/usr/sbin/iptables -P FORWARD ACCEPT' ${D}${systemd_unitdir}/system/docker.service
}