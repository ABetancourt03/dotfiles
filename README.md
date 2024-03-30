## 🔧 Install Configs

### [neovim](https://neovim.io/)
- Mac/Linux

```sh
git clone https://github.com/ABetancourt03/dotfiles.git && cd ./dotfiles && cp -a nvim ~/.configs/nvim && nvim
```

- Windows
```powershell
git clone https://github.com/ABetancourt03/dotfiles.git
```

## 🔧 Update Configs
### [neovim](https://neovim.io/)
- Mac/Linux

```sh
cd ~/dotfiles && git pull && rm -rf ~/.config/nvim && cp -a ~/dotfiles/nvim ~/.config/nvim && nvim ~/.config/nvim
```
