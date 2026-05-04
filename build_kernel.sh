#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=/home/aumpatel/toolchain/gcc-linaro-4.9/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=p

mkdir -p out

make ARCH=arm64 O=out exynos7870-on7xreflte_defconfig
make ARCH=arm64 O=out -j64 | tee out/build.log
