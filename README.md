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
ln -s ~/dotfiles/.gemrc ~/.gemrc
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

# VS Code
snippets どうやって作るか。

`prefix`の部分を`initialize`とすると、
結局、`def initialize`と書こうとしてしまい、`def`が二重になって不便だった。
`prefix`を`initialize`から`def initialize`にして、快適になった。
```json
  "initialize_method": {
    "prefix": "def initialize",
    "body": ["def initialize", "  $1", "end"]
  },
```
