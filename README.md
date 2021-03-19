# dotfiles

- ~/.gitconfig
- ~/.gitignore
- ~/.vimrc
- ~/.zshrc

- vscode
  - ~/Library/Application Support/Code/User

## 作成方法

```sh
cd ~
mv .gemrc dotfiles
```


VS Code
```zsh
cd ~/Library/Application Support/Code/User
mv keybindings.json ~/dotfiles/vscode/keybindings.json
ln -s ~/dotfiles/vscode/keybindings.json keybindings.json
mv settings.json ~/dotfiles/vscode/settings.json
ln -s ~/dotfiles/vscode/settings.json settings.json
mv snippets ~/dotfiles/vscode/snippets
ln -s ~/dotfiles/vscode/snippets snippets
```
