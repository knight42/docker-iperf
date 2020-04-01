#!/bin/bash
set -euo pipefail

FORTIO_VERSION=1.3.1

cat >/etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/debian unstable main contrib non-free
EOF

apt update && apt install -y --no-install-recommends ca-certificates
sed -i 's|http|https|' /etc/apt/sources.list && apt install -y --no-install-recommends wget curl vim jq git less apache2-utils procps \
    tcpdump ncat iperf3 iproute2 bmon sysbench stress-ng dnsutils sockperf siege qperf telnet

wget https://github.com/fortio/fortio/releases/download/v${FORTIO_VERSION}/fortio_${FORTIO_VERSION}-1_amd64.deb
dpkg -i fortio_${FORTIO_VERSION}-1_amd64.deb
rm fortio_${FORTIO_VERSION}-1_amd64.deb

apt-get clean && rm -rf /var/lib/apt/lists/*
