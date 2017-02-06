#!/bin/bash
# Script: pheptoan.sh
# Set execute permission: chmod +x pheptoan.sh
# Run script: ./pheptoan.sh

echo -n "Nhap vao hai so a, b: "
read a b

tong=$((a + b))
hieu=$((a - b))
tich=$((a * b))

echo "Tong cua hai so $a va $b: $tong"
echo "Hieu cua hai so $a va $b: $hieu"
echo "Tich cua hai so $a va $b: $tich"
