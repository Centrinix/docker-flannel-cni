FROM busybox

ARG TARGETARCH

ADD dist/$TARGETARCH/flannel /opt/cni/bin/flannel
ADD dist/$TARGETARCH/loopback /opt/cni/bin/loopback
ADD dist/$TARGETARCH/bridge /opt/cni/bin/bridge
ADD dist/$TARGETARCH/cnitool /opt/cni/bin/cnitool
ADD dist/$TARGETARCH/dhcp /opt/cni/bin/dhcp
ADD dist/$TARGETARCH/ipvlan /opt/cni/bin/ipvlan
ADD dist/$TARGETARCH/macvlan /opt/cni/bin/macvlan
ADD dist/$TARGETARCH/noop /opt/cni/bin/noop
ADD dist/$TARGETARCH/portmap /opt/cni/bin/portmap
ADD dist/$TARGETARCH/ptp /opt/cni/bin/ptp
ADD dist/$TARGETARCH/tuning /opt/cni/bin/tuning
ADD dist/$TARGETARCH/host-local /opt/cni/bin/host-local
ADD dist/$TARGETARCH/vlan /opt/cni/bin/vlan

ADD install-cni.sh /install-cni.sh
ADD flannel.conflist.default /flannel.conflist.default
