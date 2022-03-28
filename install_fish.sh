#!/bin/bash
set -e

curl -L "https://github.com/fish-shell/fish-shell/releases/download/3.4.1/fish-3.4.1.tar.xz" > fish_src.tar.xz
tar -xvf fish_src.tar.xz
cd fish-3.4.1
sudo make install
rm -rf fish-3.4.1 fish_src.tar.xz
