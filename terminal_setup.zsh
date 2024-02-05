#!/bin/zsh

cd ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

zshrc_path="$HOME/.zshrc"
new_theme='ZSH_THEME="powerlevel10k/powerlevel10k"'
new_plugins='plugins=(git zsh-syntax-highlighting zsh-autosuggestions)'

# Check if the .zshrc file exists
if [[ -f "$zshrc_path" ]]; then
    # Use sed to replace the content of line 18 with the new theme
    sed -i '18s/.*/'"$new_theme"'/' "$zshrc_path"

    # Use sed to replace the content of line 80 with the new plugins
    sed -i '80s/.*/'"$new_plugins"'/' "$zshrc_path"

    echo "ZSH theme and plugins updated successfully in $zshrc_path"
else
    echo "Error: $zshrc_path not found."
fi
