# glibc_run

`glibc_run` is a command line tool designed for binary security researchers and CTF contestants to easily test and debug programs under different versions of the GNU C Library (glibc).

[查看中文版](README_zh.md)

## Features

- **Testing Across glibc Versions**: Seamlessly run and test binaries under multiple versions of glibc, which is essential for compatibility checks and exploit development.
- **Ease of Use**: A user-friendly command-line interface to switch between different versions of glibc effortlessly.
- **Automated Setup**: Scripts to automate the downloading and configuration of various glibc versions.
- **Ideal for Binary Security**: Tailored for the unique needs of binary security analysis, including CTF challenges and exploit development.

## Getting Started

### Prerequisites

Ensure the following software is installed on your system:

- Git
- Patchelf
- (Optional) GDB for debugging
- (Optional) Radare2 for binary analysis

### Installation

To install `glibc_run`, follow these steps:

1. Clone the repository:

```sh
git clone https://github.com/p0ise/glibc_run.git
```

2. Enter the project directory:

```sh
cd glibc_run
```

3. Run the installation script:

```sh
sudo ./install.sh
```

4. (Optional) Initialize and update submodules:

```sh
git submodule update --init --recursive
```

### Uninstall

If you need to uninstall `glibc_run` from your system, run the uninstall script:

```sh
sudo ./uninstall.sh
```

### Usage

To use glibc_run to run your program, use the following command format:

```sh
glibc_run <glibc_version> <your_program>
```

#### Example

Running a program named `example` under glibc version 2.27:

```sh
glibc_run 2.27 example
```

## Contributing

We welcome and encourage contributions to `glibc_run` from the community, whether it's reporting issues, suggesting improvements, or directly contributing to the code. Please read [CONTRIBUTING.md](./CONTRIBUTING.md) for details on how to get started.

## License

This project is licensed under the MIT License. For more details, please see the [LICENSE](./LICENSE) file.

## Contact

If you have any questions or suggestions, please contact us by [creating an issue](https://github.com/p0ise/glibc_run/issues/new).

## Acknowledgments

Special thanks go to the following projects and teams whose work provided valuable support and inspiration for the development of this project:

- **[how2heap](https://github.com/shellphish/how2heap)**: The inspiration and part of the code for this project come from this project.
- **[glibc-all-in-one](https://github.com/matrix1001/glibc-all-in-one)**: This project uses `glibc-all-in-one` to facilitate the use of different versions of glibc environments Testing and debugging.