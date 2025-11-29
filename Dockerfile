# 使用 Ubuntu 22.04 作为基础镜像
FROM ubuntu:22.04

# 镜像作者信息
LABEL maintainer="zhanhong@ntr.you"

# 避免交互式安装时的弹窗警告
ENV DEBIAN_FRONTEND=noninteractive

# 设置容器内工作目录
WORKDIR /workspace

# 安装基础工具 (已包含 PPSC 课程所需的所有工具)
# 加上 --no-install-recommends 可以减小体积，但为了稳妥这里先不加
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    vim \
    nano \
    unzip \
    zip \
    make \
    cmake \
    g++ \
    gdb \
    python3 \
    python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 声明挂载卷
VOLUME ["/workspace"]

# 默认启动 bash
CMD ["bash"]
