# glibc_run

`glibc_run` 是一个为二进制安全研究者和 CTF 竞赛选手设计的命令行工具，用于在不同版本的 GNU C Library (glibc) 下便捷地测试和调试程序。

[View in English](README.md)

## 特性

- **多版本 glibc 测试**：无缝地在多个 glibc 版本下运行和测试二进制文件，对于兼容性检查和漏洞利用开发至关重要。
- **易于使用**：用户友好的命令行界面，轻松切换不同版本的 glibc。
- **自动化设置**：自动下载和配置多个版本 glibc 的脚本。
- **适合二进制安全需求**：特别适用于二进制安全分析的独特需求，包括 CTF 挑战和漏洞开发。

## 开始使用

### 先决条件

确保您的系统中已安装以下软件：

- Git
- Patchelf
- (可选) GDB：用于调试
- (可选) Radare2：用于二进制分析

### 安装

要安装 `glibc_run`，请按照以下步骤操作：

1. 克隆仓库：

```sh
git clone https://github.com/p0ise/glibc_run.git
```

2. 进入项目目录：

```sh
cd glibc_run
```

3. 运行安装脚本：

```sh
sudo ./install.sh
```

4. (可选) 初始化和更新子模块：

```sh
git submodule update --init --recursive
```

## 卸载

如果需要从系统中卸载 `glibc_run`，请运行卸载脚本：

```sh
sudo ./uninstall.sh
```

### 使用方法

要使用 `glibc_run` 运行程序，只需使用以下格式的命令：

```sh
glibc_run <glibc_version> <your_program>
```

#### 示例

在 glibc 2.27 版本下运行名为 `example` 的程序：

```sh
glibc_run 2.27 example
```

## 贡献

我们欢迎并鼓励社区对 `glibc_run` 进行贡献，无论是通过报告问题、提出改进建议，还是直接贡献代码。请阅读 [CONTRIBUTING_zh.md](./CONTRIBUTING_zh.md) 了解如何开始贡献。

## 许可证

该项目采用 MIT 许可证。更多请参阅 [LICENSE](./LICENSE) 文件。

## 联系方式

如果有任何问题或建议，请[创建一个 Issue](https://github.com/p0ise/glibc_run/issues/new)。

## 致谢

特别鸣谢以下项目和团队，他们的工作为本项目的发展提供了宝贵的支持和灵感：

- **[how2heap](https://github.com/shellphish/how2heap)**：本项目的灵感和部分代码来源于该项目。
- **[glibc-all-in-one](https://github.com/matrix1001/glibc-all-in-one)**：本项目使用了 `glibc-all-in-one` 以便于在不同版本的 glibc 环境下测试和调试。