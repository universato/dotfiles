export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# PS1 : Prompt
# %n : name(user name)
# %m : host name
# %~ : current directory
# %T : HH-MM
# %D : YY-MM-DD
# %F{080} %f: color
PS1="
%F{080}%~ $ %f"
PROMPT="%F{080}%~ $ %f"
# PS1と書いてもPROMPTと書いても同じみたい。PS1は、bashでも使える表記?
# 通常の左のPROMPTと、右のRPOMPTがある。
# 右のRPROMPTは、あとでGitのブランチ名を表示するようにしている。

# zshrc_useful.sh by mollifier-san
# https://gist.github.com/mollifier/4979906
export LANG=ja_JP.UTF-8

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ディレクトリ名の入力だけでcdできるようにする
setopt auto_cd

# zsh入門してみたら便利すぎて鼻息が抑えられない - はてブロ@ama_ch http://ama-ch.hatenablog.com/entry/20090109/1231526834
# 移動したディレクトリを記録しておく。"cd -[Tab]"で移動履歴を一覧
setopt auto_pushd

# 間違ったときに、もしかしてをだしてくれる。
# サジェストが鬱陶しいそうだったので切る。。
# setopt correct
# [nyae]?

# https://twitter.com/turara_engeneer/status/1311509346535182336
# [note] not real-time
setopt share_history

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# Ctrl+Dでzshを終了しない
setopt ignore_eof

# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep音を無効にする
setopt no_beep

# http://ama-ch.hatenablog.com/entry/20090109/1231526834
# 補完候補表示時などにピッピとビープ音をならないように設定
setopt nolistbeep

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# https://qiita.com/turara/items/3cc916e13cf39d267acf
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# 重複を記録しない。直前と同じコマンドをヒストリに追加しない。
setopt hist_ignore_dups
# 古いコマンドと同じものは無視
setopt hist_save_no_dups
# 単に古いコマンドより、重複コマンドの方を優先的に忘れるオプション
setopt HIST_EXPIRE_DUPS_FIRST

setopt hist_reduce_blanks

# z command
# https://github.com/rupa/z
. ~/bin/z/z.sh

# ブランチを補完する。
# https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh
fpath=(~/.zsh $fpath)
# ~/.zshは存在しないので不要では。次でもいいのでは。
# fpath=($fpath)

# https://qiita.com/benzene/items/865506483377ad4128ee
# $fpathの重複を削除する。
typeset -U FPATH
echo FPATH
echo $FPATH | tr ':' '\n'
echo ''

# 以下のコードは過剰?
# fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
# 下のコードで補完機能が使えるようになるらしい。
autoload -U compinit
compinit -u

# Promptの右端に今のブランチを表示する。
# https://git-scm.com/book/ja/v2/Appendix-A%3A-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AEGit-Zsh%E3%81%A7Git%E3%82%92%E4%BD%BF%E3%81%86
# autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

# vcs_info の使い方 あるいは prompt_subst のススメ - s9g https://s9g.hatenadiary.org/entry/20100504/vcs_info

# .zshrcで見かけるautoloadの意味と使い方 - Qiita https://qiita.com/yuku_t/items/77c23390e52168a2754a
# > autoload で -U を使っていない場面をみたことがありません。
# > 実はこのオプションは、展開される関数の内部で alias の展開を しない ためのオプションです
# > つまり、これがないとあなたが適当に作ったalias が干渉して、関数の動作が変わってしまう危険があるので、それを回避するために使うのです。

# 重複を削除する。
typeset -U precmd_functions
echo $precmd_functions
echo ''

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias .files='cd ~/dotfiles'

alias a='git add'
alias a.='git add .'
alias ac-library='cd ~/rubybook/ac-library-rb'
alias ac-library-rb='cd ~/rubybook/ac-library-rb'
alias acl='code ~/rubybook/ac-library-rb'
alias acmm='git commit -am'
alias ad='git add'
alias ad.='git add .'
alias add='git add'
alias add.='git add .'
alias add.='git add .'
alias am='git commit --amend'
alias ame='git commit --amend'
alias amen='git commit --amend'
alias amend='git commit --amend'

# alias b='bundle'
alias b='git branch'
alias bc='./bin/console'
alias bd='git branch -d'
alias be='bundle exec'
alias bi='bundle install'
alias bincon='./bin/console'
alias binconsole='./bin/console'

alias bl='git blame'
alias bla='git blame'
alias blam='git blame'
alias blame='git blame'
alias bni='bundle install'
alias bo='bundle outdated'
# alias br='brew'
alias br='git branch'
alias bra='git branch'
alias bran='git branch'
alias branch='git branch'
alias brewi='brew install'
alias bri='brew install'
alias bu='bundle update'
alias buu='bundle update'
alias bui='bundle install'
alias bx='bundle exec'

alias c='clear'
# alias c='code'
alias c.='code .'
alias ca='cat'
alias case='case' # `case` is a keyword for shell
# alias cb='git checkout -b'
alias cb='git switch -c'
alias cd='cd'
alias cd..='cd ..'
alias cdh='cd ~'
alias ch='cd ~'
alias chp='git cherry-pick'
alias cp='cp'
alias ci='git commit'
alias cl='clear'
alias cle='clear'
alias clea='clear'
alias cls='clear && ls'
alias cm='git commit'
alias cmm='git commit -m'
alias cma='git commit --amend'
alias cmae='git commit --allow-empty'
alias cmaem='git commit --allow-empty -m'
alias cmad='git commit --amend'
alias cmam='git commit --amend'
alias cmad='git commit --amend'
alias cme='git commit --allow-empty'
alias cmem='git commit --allow-empty -m'
# alias co='git checkout' # switch使えば必要ないのでは。
alias co='code'
alias co.='code .'
alias coc='code' # for spell miss
alias coce='code' # for spell miss
alias cod.='code .'
alias cod.='code .'
alias code.='code .'
alias code.='code .'
alias com='git checkout main'
alias coma='git checkout main'
alias comai='git checkout main'
alias comain='git checkout main'
alias con='./bin/console'
alias cpi='cp -i'
alias cs='code ~/Library/"Application Support"/Code/User/snippets'
alias csn='code ~/Library/"Application Support"/Code/User/snippets'
alias csni='code ~/Library/"Application Support"/Code/User/snippets'
alias csnippets='code ~/Library/"Application Support"/Code/User/snippets'
alias cz='code ~/.zshrc'
alias czenn='code ~/zenn-content'
alias czsh='code ~/.zshrc'
alias czshrc='code ~/.zshrc'

alias d='git diff'
alias dm='git diff main'
alias d1='git diff HEAD~'
alias d2='git diff HEAD~~'
alias d3='git diff HEAD~~~~'
alias d4='git diff HEAD~~~~~'
alias dc='dc'
alias dcac='git diff --cached'
alias dcc='git diff --cached'
alias df='cd ~/dotfiles'
alias dic='open /System/Applications/Dictionary.app' # cmd + space -> 'dic'
alias ds='diff --st'
alias do='do' # do is keyword
# nvm.sh:114: parse error near `done' · Issue #987 · nvm-sh/nvm
# https://github.com/nvm-sh/nvm/issues/987
# [Solved]nvm nvm.sh:114: parse error near `done'
# https://lifesaver.codes/answer/nvm-sh-114-parse-error-near-done
alias dot='code ~/dotfiles'
alias dotf='code ~/dotfiles'
alias dotfi='code ~/dotfiles'
alias dotfil='code ~/dotfiles'
alias dotfile='code ~/dotfiles'
alias dotfiles='code ~/dotfiles'
alias done='done' # done is keyword(same as `do`)
alias ds='git diff --staged'
alias dstat='git diff --stat'
alias dstag='git diff --staged'
alias dstage='git diff --staged'
alias dstat='git diff --stat'

alias ef='eslint --fix'
alias elif='elif' # `elif` is a keyword for shell
alias es='eslint --fix'
alias esac='esac' # `esac` is a keyword for shell

alias f='open'
alias fi='fi' # `fi` is keyword for shell
alias fin='open'
alias finde='open'
alias finder='open'
alias fjord='cd ~/fjord'
alias for='for' # `for` is a keyword for shell

alias g='git'
alias ga='git add'
alias ga.='git add .'
alias gb='git branch'
alias gbl='git blame'
alias gbla='git blame'
alias gblam='git blame'
alias gblame='git blame'
alias gbr='git branch'
alias gbra='git branch'
alias gbran='git branch'
alias gbranc='git branch'
alias gbranch='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit'
alias gcmm='git commit -m'
alias gcma='git commit --amend'
alias gcmam='git commit --amend'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcommita='git commit --amend'
alias gcommitame='git commit --amend'
alias gcreate='git switch --create'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gdi='git diff'
alias gdif='git diff'
alias gdiff='git diff'
alias gdiffc='git diff --cached'
alias gdiffm='git diff main'
alias gdiffs='git diff --staged'
alias gdm='git diff main'
alias gds='git diff --staged'
alias gd1='git diff HEAD~'
alias gd2='git diff HEAD~2'
alias gd3='git diff HEAD~3'
alias gd4='git diff HEAD~4'
alias gemail='git config user.email'
alias gf='git fetch'
alias gg='git graph'
alias gh='gh'

alias gi='git'
alias gia='git add'
alias gia.='git add .'
alias giad='git add'
alias giad.='git add .'
alias giadd='git add'
alias giadd.='git add .'
alias gib='git branch'
alias gibl='git blame'
alias gibr='git branch'
alias gibra='git branch'
alias gic='git commit'
alias gica='git commit --amend'
alias gicam='git commit --amend'
alias gicoa='git commit --amend'
alias gica='git commit --amend'
alias gich='git cherry-pick'
alias gichp='git cherry-pick'
alias gicm='git commit'
alias gicmm='git commit -m'
alias gicma='git commit --amend'
alias gicmam='git commit --amend'
alias gicommitamend='git commit --amend'
alias gicp='git cherry-pick'
alias gid='git diff'
alias gidc='git diff --cached'
alias gidcac='git diff --cached'
alias gidcc='git diff --cached'
alias gidi='git diff'
alias gidif='git diff'
alias gidiff='git diff'
alias gidm='git diff main'
alias gid1='git diff HEAD~'
alias gid2='git diff HEAD~2'
alias gid3='git diff HEAD~3'
alias gid4='git diff HEAD~4'
alias giemail='git config user.email'
alias gif='git fetch'
alias gife='git fetch'
alias gifet='git fetch'
alias gifetc='git fetch'
alias gifetch='git fetch'
alias gimail='git config user.email'
alias gimerge='git merge'
alias giname='git config user.name'
alias ginit='git init'
alias gipul='git pull'
alias gipull='git pull'
alias gipullo='git pull origin'
alias gipulloma='git pull origin main'
alias gipullomai='git pull origin main'
alias gipullomain='git pull origin main'
alias gipullomaster='git pull origin master'
alias gipsh='git push'
alias gipus='git push'
alias gipush='git push'
alias gipushf='git push -f'
alias gipusho='git push origin'
alias gipushom='git push origin main'
alias gipusori='git push origin'
alias gipushori='git push origin'
alias gipushfo='git push -f origin'
alias gipushfom='git push -f origin main'
alias gir='git rebase'
alias gire='git rebase'
alias girebase='git rebase'
alias girh='git reset --hard'
alias girm='git rm'
alias girs='git reset --soft'
alias gist='git status'
alias gists='git status -s'

alias git='git'
alias gita='git add'
alias gita.='git add .'
alias gitad='git add'
alias gitad.='git add .'
alias gitadd='git add'
alias gitadd.='git add .'
alias gitb='git branch'
alias gitbl='git blame'
alias gitbr='git branch'
alias gitbra='git branch'
alias gitcmam='git commit --amend'
alias gitcoa='git commit --amend'
alias gitcommita='git commit --amend'
alias gitcommitamend='git commit --amend'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitlocalname='git config user.name'
alias gitemail='git config user.email'
alias github='gh'
alias gitl='git log'
alias gitlo='git log'
alias gitlog='git log'
alias gitls='git log -s'
alias gitlst='git log --stat'
alias gitl1='git log --oneline'
alias gitmail='git config user.email'
alias gitmerge='git merge'
alias gitname='git config user.name'
alias gitps='git push'
alias gitpsf='git push -f'
alias gitpull='git pull'
alias gitpush='git push'
alias gitr='git rebase'
alias gitre='git rebase'
alias gitrebase='git rebase'
alias gitrm='git rm'
alias gits='git status'
alias gitst='git status'
alias gitsts='git status -s'

# 【zsh】僕のalias【随時更新】
# https://qiita.com/msickpaler/items/4fc35b11fbcc3942aafb
alias glt="git log --graph --pretty=format:'%x09%C(auto) %h %Cgreen %ar %Creset%x09by \"%C(cyan ul)%an%Creset\" %x09%C(auto)%s %d'"
alias glog='git log'
alias glgo='git log --oneline --graph'
alias glg1='git log --oneline --graph'
alias gl1g='git log --oneline --graph'
alias gl1='git log --oneline'
alias gmail='git config user.email'
alias gmerge='git merge'
alias gname='git config user.name'
alias got='git'
alias gpl='git pull'
alias gploms='git pull origin master'
alias gplomai='git pull origin main'
alias gplomain='git pull origin main'
alias gplomas='git pull origin master'
alias gpsh='git push'
alias gpshf='git push -f'
alias gpsho='git push origin'
alias gpshori='git push origin'
alias gpshfo='git push -f origin'
alias gpshfori='git push -f origin'
alias gpus='git push'
alias gpusf='git push -f'
alias gpush='git push'
alias gpushf='git push -f'
alias gps='git push'
alias gpsh='git push'
alias gpsho='git push origin'
alias gpshm='git push origin main'
alias gpshom='git push origin main'
alias gpso='git push origin'
alias gpullomain='git pull origin main'
alias gr='grep'
alias gre='grep'
alias greb='git rebase'
alias gres='git restore'
alias grebase='git rebase'
alias grebi='git rebase -i'
alias grh='git reset --hard'
alias gri='git rebase -i'
alias grm='git rm'
alias grs='git reset --soft'
alias gs='git status'
alias gsc='git switch -c'
alias gss='git status -s'
alias gst='git status'
alias gsta='git status'
alias gstat='git status'
alias gstatu='git status'
alias gti='git' # typo
alias gsm='git switch main'
alias gsw='git switch'
alias gswm='git switch main'
alias gswc='git switch -c'
alias gswcre='git switch -c'
alias gswcreate='git switch -c'
alias gswi='git switch'
alias gswitch='git switch'
alias gswitchc='git switch -c'

# alias h='cd ~'
alias hc='heroku create'
alias hcreate='heroku create'
alias he='heroku'
alias herocre='heroku create'
alias hl='heroku login'
alias hli='heroku login --interactive'
alias home='cd ~'
# alias hr='heroku'
# alias hr='heroku rename'
alias hero='heroku'
alias herok='heroku'

alias if='if' # if is keyword
alias in='git add'
alias ind='git add'
alias index='git add'

alias k='kill -9'
alias k9='kill -9'

alias l='ls'
alias la='ls -A'
alias lal='ls -Al'
alias lf='ls -F'
alias lg1='git --graph --oneline'
alias ll='ls -l'
alias lla='ls -lA'
alias lh3000='open http://localhost:3000/'
alias localhost3='open http://localhost:3000/'
alias localhost30='open http://localhost:3000/'
alias localhost300='open http://localhost:3000/'
alias localhost3000='open http://localhost:3000/'
alias log='log'
alias ls='ls'
alias lst='git log --stat'
alias logs='git log --stat'
alias logst='git log --stat'
alias ls1='ls -1F'
alias lsf='ls -F'
alias l1='git log --oneline'
alias l1g='git --graph --oneline'

alias m='mkdir'
alias mp='mkdir -p'
alias md='mkdir'
alias mdp='mkdir -p'
alias makedir='mkdir'
alias mvi='mv -i'

# alias n='git checkout -b'
alias n='npm'
alias nd='node'
alias nj='node'
alias nm='npm'
alias no='node'
alias now='date +"%m/%d(%a) %H:%M:%S"'
alias nr='npm run'
alias nrs='npm run serve'
alias nrserve='npm run serve'
alias np='npm'
alias npm='npm'
alias nx='npx'
alias nzp='npx zenn preview'

alias o='open'
alias op='open'
alias ope='open'
alias or='open http://localhost:3000/'
alias ora='open http://localhost:3000/'
alias orails='open http://localhost:3000/'
alias ou='git restore --staged'
alias out='git restore --staged'
alias oz='open http://localhost:8000/'
alias oze='open http://localhost:8000/'
alias ozenn='open http://localhost:8000/'
alias o3='open http://localhost:3000/'
alias o30='open http://localhost:3000/'
alias o300='open http://localhost:3000/'
alias o3000='open http://localhost:3000/'
alias o8='open http://localhost:8000/'
alias o80='open http://localhost:8000/'
alias o800='open http://localhost:8000/'
alias o8000='open http://localhost:8000/'

alias pl='git pull'
alias pll='git pull'
alias ps='git push'
alias psh='git push'
alias pull='git pull'
alias push='git push'
alias plo='git pull origin'
alias ploms='git pull origin master'
alias pso='git push origin'
alias psoms='git push origin master'

alias r='rails'
alias ra='rails'
alias rac='rails console'
alias ras='rails server'
alias rat='rails test'
alias rail='rails'
alias rb='ruby'
alias rb18='rbenv local 1.8.6'
alias rb25='rbenv local 2.5.8'
alias rb26='rbenv local 2.6.6'
alias rb27='rbenv local 2.7.1'
alias rb271='rbenv local 2.7.1'
alias rbenv271='rbenv local 2.7.1'
alias rbv='rbenv versions'
alias rbversions='rbenv versions'
alias rbvs='rbenv versions'
alias rc='rubocop'
alias rca='rubocop -a'
alias rdbdrop='rails db:drop'
alias rdbc='rails db:create'
alias rdbm='rails db:migrate'
alias rdbs='rails db:seed'
alias rddrop='rails db:drop'
alias rdc='rails db:create'
alias rdm='rails db:migrate'
alias rdr='rails db:reset'
alias rds='rails db:seed'
# alias rg='rails g'
alias rg='rg'
alias rgc='rails g controller'
alias rgm='rails g model'
alias rl18='rbenv local 1.8.6'
alias rl25='rbenv local 2.5.8'
alias rl26='rbenv local 2.6.6'
alias rl27='rbenv local 2.7.1'
alias rl271='rbenv local 2.7.1'
alias rbenv271='rbenv local 2.7.1'
alias rm='rm'
alias rmi='rm -i'
alias robocop='rubocop'
alias ro='rails routes'
alias rou='rails routes'
alias rout='rails routes'
alias route='rails routes'
alias routes='rails routes'
alias rs='rails routes'
alias rr='rails server'
alias rt='rails test'
alias ru='ruby'
alias rub='ruby'
alias rubo='rubocop'
alias ruboc='rubocop'
alias rubycop='rubocop'
alias ruc='rubocop'
alias rwc='rails webpacker:compile'

alias s='git status'
alias sl='ln -s'
alias sm='git switch main'
alias so='source'
alias sou='source'
alias sour='source'
alias sourc='source'
alias sp='spring'
alias ss='git status -s'
alias st='git status'
alias std='git diff --stat'
alias stat='stat'
alias statd='git diff --stat'
alias sz='source ~/.zshrc'
alias sw='git switch'
alias swm='git switch main'
alias swich='git switch'

alias t='date +"%m/%d(%a) %H:%M:%S"'
alias then='then' # `then` is a keyword for shell
alias time='time'

alias u='cd ..'
alias u2='cd ../..'
alias u2='cd ../../..'
alias up='cd ..'
alias un='git restore --staged'
alias unst='git restore --staged'
alias unstage='git restore --staged'
alias until='until' # `until` is a keyword for shell
alias us='git restore --staged'
alias ust='git restore --staged'

alias v='vim'
# alias v='code'
alias vag='vagrant'
alias vagrant='vagrant up'
alias v='vim'
alias vs='code'
alias vs.='code.'
alias vscode='code'
alias vscode.='code.'
alias vz='vim ~/dotfiles/.zshrc'

alias while='while' # `while` is a keyword for shell

alias y='yarn'
alias ya='yarn'
alias yar='yarn'
alias yi='yarn install'
alias yic='yarn install --check-files'
alias yicf='yarn install --check-files'

alias zenn='npx zenn'
alias zennserve='npx zenn preview'
alias zennpre='npx zenn preview'
alias zennpreview='npx zenn preview'
alias zp='npx zenn preview'
alias zs='npx zenn preview'
alias zshrc='cd ~/dotfiles/.zshrc'

alias -s html='open'
alias -s js='node'
alias -s rb='ruby'

# shell keywords
alias do='do'
alias done='done'
alias if='if'
alias elif='elif'
alias else='else'
alias fi='fi'
alias case='case'
alias csac='csac'
alias for='for'
alias while='while'
alias until='until'
# nvm.sh:114: parse error near `done' · Issue #987 · nvm-sh/nvm
# https://github.com/nvm-sh/nvm/issues/987
# [Solved]nvm nvm.sh:114: parse error near `done'
# https://lifesaver.codes/answer/nvm-sh-114-parse-error-near-done

# 世の中のエンジニアのalias設定 - Qiita
# https://qiita.com/reireias/items/d906ab086c3bc4c22147


# https://qiita.com/eexiech8aNahShee/items/355cd4d884ce03656285
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
  # 1行あける
  print

  # カレントディレクトリ
  # local left=' %{\e[38;5;2m%}(%~)%{\e[m%}'
  local left="%F{080}%~%f"

  # バージョン管理されてた場合、ブランチ名
  vcs_info
  local right="%{\e[38;5;32m%}${vcs_info_msg_0_}%{\e[m%}"
  # スペースの長さを計算
  # テキストを装飾する場合、エスケープシーケンスをカウントしないようにします
  local invisible='%([BSUbfksu]|([FK]|){*})'
  local leftwidth=${#${(S%%)left//$~invisible/}}
  local rightwidth=${#${(S%%)right//$~invisible/}}
  local padwidth=$(($COLUMNS - ($leftwidth + $rightwidth) % $COLUMNS))

  print -P $left${(r:$padwidth:: :)}$right
}
# ユーザ名@ホスト名
# PROMPT='%n@%m %# '
PROMPT="%F{080}$ %f"

# 現在時刻
# %D : むしろ消すと、current working directoryが表示される。
# %b : Month
# %d : day(date)
# %* : time(hh:mm:ss)

RPROMPT=$'%{\e[38;5;251m%}%D{%b/%d} %*%{\e[m%}'
TMOUT=1
TRAPALRM() {
  zle reset-prompt
}

# $`%{\e[38;5;251m%}` :色の始まりかな。
# vcs_info_msg_0_ : current branch
