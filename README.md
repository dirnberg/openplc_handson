# openplc_handson

## install open plc runtime on ubuntu 18.04 lts

```bash
apt update
apt upgrade
git clone https://github.com/thiagoralves/OpenPLC_v3.git
cd OpenPLC_v3
./install.sh linux
.//start_openplc.sh
```

## install rust and rodbus Client on ubuntu 18.04 lts

```bash
curl https://sh.rustup.rs -sSf | sh
// press 1
source "$HOME/.cargo/env"
cargo install rodbus-client
```
