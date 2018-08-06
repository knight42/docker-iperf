FROM centos:7
LABEL maintainer "Jian Zeng <anonymousknight96@gmail.com>"
ENTRYPOINT ["iperf3", "-s"]
RUN yum install -y epel-release && \
    yum install -y iperf3 httpd-tools qperf net-tools bind-utils less stress iproute bmon && \
    yum clean all && rm -rf /var/cache/yum
