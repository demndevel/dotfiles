# configs

zshrc - https://git.io/JzTrL <br>
init.vim - https://git.io/JzYut <br>

install powerlevel10k - ```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k``` <br>
configure powerlevel10k - p10k configure


prompt without p10k:  ```PROMPT='%F{green}%n%f %d %F{yellow}$ %F{white}'```

my theme (demns.zsh-theme): <br>
![image](https://user-images.githubusercontent.com/69032700/161432897-de390766-2761-490d-ad16-6457af881ba6.png)


## Neovim

~~Run this ```curl -fLo ~/.config/nvim/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```~~
and put [init.vim](https://git.io/JzYut) file to the ```~/.config/nvim``` directory

## Zsh

1. Install oh my zsh - ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"``` <br>
2. Install zsh autosuggestions - ```git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions```<br>
3. Install zsh-syntax-highlighting - ```git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting``` <br>
4. Install demns.zsh-theme
5. Set zsh as default: ```chsh -s $(which zsh)```
## Pacman 

In ```/etc/pacman.conf``` remove '#' in line with Color

## Tiled stuff

