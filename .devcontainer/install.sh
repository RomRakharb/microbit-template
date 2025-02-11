#! /usr/bin/bash

echo
echo "---------------------"
echo "starts install script"
echo "---------------------"
echo
sudo apt update && sudo apt -y upgrade
sudo apt-get install -y software-properties-common
sudo apt update
sudo add-apt-repository -y ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix
cargo init
rustup component add rust-analyzer llvm-tools
rustup target add thumbv7em-none-eabihf
cargo install bacon cargo-binutils
yes | curl --proto '=https' --tlsv1.2 -LsSf https://github.com/probe-rs/probe-rs/releases/latest/download/probe-rs-tools-installer.sh | sh
echo
echo "---------------------"
echo "install script ends"
echo "---------------------"
echo
