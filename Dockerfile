ENTRYPOINT ["iperf3", "-s"]
FROM centos:7
LABEL maintainer "Jian Zeng <anonymousknight96@gmail.com>"
RUN yum install -y iperf3 httpd-tools qperf net-tools bind-utils less stress iproute && \
    yum clean all
