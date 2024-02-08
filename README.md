# .files

## 1. Shell configuration

To configure the zsh shell with [oh my zsh](https://ohmyz.sh/), [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme, and the [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and [auto-suggestions](https://github.com/zsh-users/zsh-autosuggestions) plugins run the following commands:

1. Install oh my zsh
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Install powerlevel10k theme
```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i '11s/.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
source ~/.zshrc
```
Follow instructions to configure as desired.

3. Install plugins
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i '80s/.*/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc
source ~/.zshrc
```

If Python is already installed via conda, run the command `~/{insert-conda-installation-path}/bin/conda init zsh` to update `.zshrc`
