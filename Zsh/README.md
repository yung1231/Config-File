# Zsh Configuration
```bash
sudo apt install zsh

cat /etc/shells

echo $0
```

Change the default shell (requires reboot)

```bash
chsh -s /usr/bin/zsh
```

> You can also switch between bash and zsh by typing

## Oh my zsh
[Official Website](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

![](https://i.imgur.com/1ZAG9vF.png)

## Theme
[External themes](https://github.com/ohmyzsh/ohmyzsh/wiki/External-themes)

Take [bullet-train](https://github.com/caiogondim/bullet-train.zsh) as an example

```bash
git clone https://github.com/caiogondim/bullet-train.zsh.git

cd bullet-train.zsh

cp bullet-train.zsh-theme ~/.oh-my-zsh/themes

# Open directly after vscode input
code ~/.zshrc
```

Modify `ZSH_THEME`

```bash
ZSH_THEME="bullet-train"
```

## Font
> If the display is weird after changing the theme, it is because of the font problem

```bash
sudo apt-get install powerline
sudo apt-get install fonts-powerline
```

## vscode messy code display problem
```bash
cd /usr/share/fonts/truetype/

sudo git clone https://github.com/abertsch/Menlo-for-Powerline.git

sudo fc-cache -f -v
```

Open `setting.json`

```json
// The path of the shell that the terminal uses on Linux.
"terminal.integrated.shell.linux": "/bin/zsh",
"terminal.integrated.fontFamily": "Menlo for Powerline",
```

## plugin
[plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins)

```bash
plugins = (PluginA PluginB PluginC...)
```

Download to `~/.oh-my-zsh/plugins`

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

- zsh-autosuggestions
- zsh-syntax-highlighting
- zsh_reload
- safe-paste
- colored-man-pages
- sudo
 
### Others
```bash
sudo apt-get install -y cowsay

cowsay "Hello, World"
```

![](https://i.imgur.com/3GETgLL.png)

Put `quote | cowsay` at the bottom of `.zshrc`