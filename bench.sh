#!/bin/bash

for wgSize in 1 2 4 8 16 32 64; do
    echo "Working Group Size ${wgSize} ${wgSize}"
    for i in {1..5}; do
        echo "execution number ${i}"
        ./mxm naive.cl ${wgSize} ${wgSize} >> wg_${wgSize}_${wgSize}.dat
    done
done

echo "Working Group Size 128 64"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 128 64 >> wg_128_64.dat
done

echo "Working Group Size 256 32"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 256 32 >> wg_256_32.dat
done

echo "Working Group Size 512 16"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 512 16 >> wg_512_16.dat
done

echo "Working Group Size 1024 1"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 1024 1 >> wg_1024_1.dat
done

echo "Working Group Size 64 128"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 64 128 >> wg_64_128.dat
done

echo "Working Group Size 32 256"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 32 256 >> wg_32_256.dat
done

echo "Working Group Size 16 512"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 16 512 >> wg_16_512.dat
done

echo "Working Group Size 1 1024"
for i in {1..5}; do
    echo "execution number ${i}"
    ./mxm naive.cl 1 1024 >> wg_1_1024.dat
done

