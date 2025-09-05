# 使用Ubuntu 22.04作为基础镜像
FROM ubuntu:22.04

# 设置非交互模式，避免安装过程中出现交互提示
ENV DEBIAN_FRONTEND=noninteractive

# 更新包索引并安装所需工具
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    gfortran \
    python3 \
    python3-pip \
    curl \
    rustc \
    && rm -rf /var/lib/apt/lists/*

# 验证安装
RUN gcc --version && \
    g++ --version && \
    gfortran --version && \
    python3 --version && \
    rustc --version

# 设置工作目录
WORKDIR /workspace

# 保持容器运行的命令
CMD ["/bin/bash"]

# docker build -t ubuntu22.04 .
# docker run -it --name=my_docker --network=host  ubuntu22.04

