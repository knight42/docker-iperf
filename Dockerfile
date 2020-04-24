FROM debian:unstable-slim
LABEL maintainer "Jian Zeng <anonymousknight96@gmail.com>"
EXPOSE 8080
cMD ["fortio", "server"]
COPY install.sh /
RUN /install.sh && rm /install.sh
