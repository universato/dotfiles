# ~/.gitconfigファイルを読み込む
gitconfig_path = File.expand_path('~/.gitconfig')
gitconfig_content = File.read(gitconfig_path)

# [alias]セクションを見つける
alias_section_start = gitconfig_content.index('[alias]')
alias_section_end = gitconfig_content.index('[', alias_section_start + 1) unless alias_section_start.nil?
alias_section_content = if alias_section_end
                          gitconfig_content[alias_section_start...alias_section_end]
                        else
                          gitconfig_content[alias_section_start..]
                        end

# [alias]セクション以外の内容を抽出
before_alias_section = gitconfig_content[0...alias_section_start]
after_alias_section = alias_section_end ? gitconfig_content[alias_section_end..] : ''

alias_commands = alias_section_content.split("\n")[1..]

# コマンド名で並び替え
sorted_alias_commands = alias_commands.sort_by { |command| command.tr('#', '').strip.split('=').first.strip }

# 更新された[alias]セクションを再構築
updated_alias_section = "[alias]\n#{sorted_alias_commands.join("\n")}"

# 全体の内容を更新
updated_gitconfig_content = before_alias_section + updated_alias_section + after_alias_section

if updated_gitconfig_content == gitconfig_content
  puts '~/.gitconfig aliases are already sorted'
else
  # ファイルに書き戻しアップデートし、その旨を出力。
  File.write(gitconfig_path, updated_gitconfig_content)
  puts 'Updated ~/.gitconfig with sorted aliases.'
end
