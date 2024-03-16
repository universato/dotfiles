import os

# .gitconfigファイルのパス
gitconfig_path = os.path.expanduser('~/.gitconfig')

# ファイルを読み込み
with open(gitconfig_path, 'r') as file:
    gitconfig_content = file.read()

# [alias]セクションを見つける
alias_section_start = gitconfig_content.find('[alias]')
alias_section_end = gitconfig_content.find('[', alias_section_start + 1) if alias_section_start != -1 else -1
alias_section_content = gitconfig_content[alias_section_start:alias_section_end] if alias_section_end != -1 else gitconfig_content[alias_section_start:]

# [alias]セクション以外の内容を抽出
before_alias_section = gitconfig_content[0:alias_section_start]
after_alias_section = gitconfig_content[alias_section_end:] if alias_section_end != -1 else ""

# aliasセクション内のコマンドを抽出し、改行で分割
alias_commands = alias_section_content.split("\n")[1:]

# コマンド名で並び替え
sorted_alias_commands = sorted(alias_commands, key=lambda command: command.replace('#', '').strip().split('=')[0].strip())

# 更新された[alias]セクションを再構築
updated_alias_section = "[alias]\n" + "\n".join(sorted_alias_commands)

# 全体の内容を更新
updated_gitconfig_content = before_alias_section + updated_alias_section + after_alias_section

if updated_gitconfig_content == gitconfig_content:
  print("~/.gitconfig aliases are already sorted")
else:
  with open(gitconfig_path, 'w') as file:
    file.write(updated_gitconfig_content)
  print("Updated ~/.gitconfig with sorted aliases.")
