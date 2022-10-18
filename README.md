# openplc_handson

## install open plc runtime on ubuntu 18.04 lts

apt update
apt upgrade

## install rust and rodbus Client on ubuntu 18.04 lts

curl https://sh.rustup.rs -sSf | sh
// press 1
source "$HOME/.cargo/env"
cargo install rodbus-client

