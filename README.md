# Docker Test Environment

一个基于 Ubuntu 22.04 的 Docker 开发测试环境，适用于 C/C++ 开发、Python 编程等场景。

## 项目结构

```
.
├── Dockerfile          # Docker 镜像构建文件
├── docker-compose.yml  # Docker Compose 配置文件
└── README.md           # 项目说明文档
```

## 环境特性

基于 Ubuntu 22.04，预装了以下开发工具：

| 工具类别 | 包含内容 |
|---------|---------|
| 编辑器 | vim, nano |
| 版本控制 | git |
| C/C++ 开发 | g++, make, cmake, gdb |
| Python | python3, python3-pip |
| 实用工具 | curl, unzip, zip, sudo |

## 快速开始

### 1. 使用预构建镜像（推荐）

```bash
docker-compose up -d
```

这将从 `ghcr.io/zhanhong-msu/test:latest` 拉取预构建的镜像并启动容器。

### 2. 本地构建镜像

如需自定义或修改镜像，可以本地构建：

```bash
docker-compose build
docker-compose up -d
```

### 3. 进入容器

```bash
docker exec -it test bash
```

## 目录挂载

容器会将上级目录 (`..`) 挂载到容器内的 `/workspace` 目录，方便在容器内访问和编辑本地文件。

## 常用命令

```bash
# 启动容器
docker-compose up -d

# 停止容器
docker-compose down

# 查看容器状态
docker-compose ps

# 查看容器日志
docker-compose logs

# 进入容器 shell
docker exec -it test bash
```

## 适用场景

- 📚 PPSC 课程学习
- 🔧 C/C++ 项目开发与调试
- 🐍 Python 脚本编写
- 🧪 跨平台开发测试

## 许可证

MIT License
