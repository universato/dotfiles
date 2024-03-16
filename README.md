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
mkdir dotfiles
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

```sh
move_and_link_for_dotfiles() {
    local source_path="$1"
    local target_directory=~/dotfiles

    # ファイルが存在するか確認
    if [ ! -f "$source_path" ]; then
        echo "Error: $source_path does not exist"
        return 1
    fi

    # 移動先のディレクトリが存在しない場合は作成
    if [ ! -d "$target_directory" ]; then
        echo "Error: $target_directory does not exist"
        return 1
    fi

    # ~/dotfilesディレクトリに移動
    mv ~/$source_path $target_directory/

    # 移動したファイルへのシンボリックリンクを作成
    ln -s $target_directory/$source_path ~/$source_path

    echo "$source_path has been moved to $target_directory and a symbolic link has been created."
}
```

`local`と書くと、ローカル変数になる。
一般に、`"$1"`だと1つの引数になるが、生の`$1`だと空白で分割されて実行される可能性がある。
なお、シングルクォートで囲んだ`'$1'`の場合、単なる$1という文字列になる。

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
