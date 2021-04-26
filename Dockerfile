FROM gliderlabs/alpine:3.7

LABEL maintainer="wanghongliang <401765060@qq.com>"
ENV VERSION 0.36.2

ADD https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_linux_arm64.tar.gz /root/
# If GitHub access is limited, please download the linux_arm64 version of FRP by yourself
# ADD frp_${VERSION}_linux_arm64.tar.gz /root/  

COPY frps.ini /root/frp_${VERSION}_linux_arm64/frps.ini
WORKDIR /root/frp_${VERSION}_linux_arm64/
CMD ["./frps","-c","./frps.ini"]
EXPOSE 7000
EXPOSE 7001
EXPOSE 80
EXPOSE 443
EXPOSE 7500
EXPOSE 9000
EXPOSE 9001