FROM centos:7
LABEL maintainer "Jian Zeng <anonymousknight96@gmail.com>"
EXPOSE 5201
ENTRYPOINT ["iperf3"]
CMD ["-s"]
RUN yum install -y epel-release && \
    yum install -y iperf3 httpd-tools qperf net-tools bind-utils less stress iproute bmon sockperf && \
    yum clean all && rm -rf /var/cache/yum
