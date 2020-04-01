FROM debian:unstable-slim
LABEL maintainer "Jian Zeng <anonymousknight96@gmail.com>"
EXPOSE 5201
ENTRYPOINT ["iperf3"]
CMD ["-s"]
COPY install.sh /
RUN /install.sh && rm /install.sh
