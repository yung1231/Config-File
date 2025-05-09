# NeoVim Configuration
## Install
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# add to zshrc
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
echo $PATH
```

```bash
# 不用做 但純紀錄
# 回覆初始化 path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```