# for rbenv
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init -)"
# echo "$(rbenv init - zsh)" と書くと、zsh用の補完機能が働くらしい。古い情報かも。なくても普通に補完されるような。

# rbenvがaliasに登録されてると次のようなエラーがでる。unalias rbenv。
# $ eval "$(rbenv init -)"
# zsh: defining function based on alias `rbenv'
# zsh: parse error near `()'
# $ which rbenv
# rbenv: aliased to rbenv

# rbenv initをやってると、~/.rbenv/shimsがPATHに登録される。
#

# Terminal # ~/zprofile
# if [ -f ~/.bashrc ]; then

## NVM_DIRに、管理してるNode.js等がある。
## nvm か nodebrew が有名なバージョン管理ツール。asdf
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm


# zshrc_useful.sh by mollifier-san
# https://gist.github.com/mollifier/4979906
export LANG=ja_JP.UTF-8

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# z command
# https://github.com/rupa/z
. ~/bin/z/z.sh

# ブランチを補完する。
# https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh
fpath=(~/.zsh $fpath)
# ~/.zshは存在しないので不要では。次でもいいのでは。
# fpath=($fpath)

# echo FPATH
# echo $FPATH | tr ':' '\n'
# echo ''



alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias .files='cd ~/dotfiles'
alias -- -='cd -'

### alias a ###
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

### alias b ###
# alias b='bundle'
alias b='git branch -vv'
alias bb='git branch -vv'
alias bbb='git branch -vv'
alias bc='./bin/console'
alias bd='git branch -d'
alias be='bundle exec'
alias bebh='bundle exec bitclust htmlfile'
alias bebs='bundle exec bitclust statichtml --outputdir=/tmp/rurema'
alias ber='bundle exec ruby'
alias beras='bundle exec rails s'
alias berb='bundle exec ruby'
alias bers='bundle exec rails s'
alias beru='bundle exec ruby'
alias berub='bundle exec ruby'
alias beruby='bundle exec ruby'
alias bh='bitclust htmlfile'
alias bi='bundle install'
alias bip='bundle install --path vendor/bundle'
alias bipv='bundle install --path vendor/bundle'
alias bipvb='bundle install --path vendor/bundle'
alias bint='bundle init'
alias bini='bundle init'
alias binit='bundle init'
alias bincon='./bin/console'
alias binconsole='./bin/console'
alias bintest="bin/test"
alias bint="bin/test"
alias biwp='bundle install --without production'
# alias biwp='bundle config set --local without "production"'

alias bl='git blame'
alias bla='git blame'
alias blam='git blame'
alias blame='git blame'
alias bni='bundle install'
alias bo='bundle outdated'
alias bp='bundle pristine'
alias bpn='bundle exec gem pristine --all --no-extension'
alias bpr='bundle pristine'
alias bpris='bundle pristine'
alias bpristine='bundle pristine'
alias bpristine='bundle pristine'
# alias br='brew'
alias br='git branch -vv'
alias bra='git branch'
alias bran='git branch'
alias branch='git branch'
alias brewi='brew install'
alias bri='brew install'
alias brv='git branch --verbose'
alias brvv='git branch -vv'
alias bt="bin/test"
alias bu='bundle update'
alias budnle='bundle' # for typo
alias bundlei='bundle install'
alias bundleini='bundle init'
alias bundleinit='bundle init'
alias bundlep='bundle pristine'
alias budnler='bundle'
alias bundleu='bundle update'
alias bui='bundle install'
alias bup='bundle pristine'
alias buu='bundle update'
alias bwp='bundle install --without production'
alias bv='git branch -v'
alias bvv='git branch -vv'
alias bw='./bin/webpack-dev-server'
alias bx='bundle exec'

### alias c ###
alias c='clear'
# alias c='code'
alias c.='code .'
alias c..='code ..'
alias ca='cat'
alias case='case' # `case` is a keyword for shell
# alias cb='git checkout -b'
alias cb='git switch -c' # create branch?
alias cbp='code ~/.bash_profile'
alias cd='cd'
alias cd..='cd ..'
alias cdh='cd ~'
alias cgie='code .git/info/exclude'
alias ch='cd ~'
alias chp='git cherry-pick'
alias cp='cp'
alias cpi="cp -i"
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
# alias co='git checkout' # switchかrestoreを使えば必要ない?
# alias co='code' # codeはcでよく使うので、coはgit checkoutに割り当てる。
alias co.='code .'
alias co.='code ..'
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
alias commi='git commit'
alias commit='git commit'
alias con='./bin/console'
alias cov='open ./coverage/index.html' # for SimpleCov
alias cpi='cp -i'
# alias cr='crystal'
alias credentials='EDITOR="vim" bin/rails credentials:edit'
alias create='git switch -c'
# alias cry='crystal'
# alias crys='crystal'
# alias cryst='crystal'
# alias crysta='crystal'
# alias crystal='crystal'
# alias crystal='$HOME/.asdf/installs/crystal/0.33.0/bin/crystal'
# alias crystal='$HOME/.asdf/installs/crystal/1.0.0/bin/crystal'
alias cs='code ~/Library/"Application Support"/Code/User/snippets'
alias csn='code ~/Library/"Application Support"/Code/User/snippets'
alias csni='code ~/Library/"Application Support"/Code/User/snippets'
alias csnippets='code ~/Library/"Application Support"/Code/User/snippets'
alias cz='code ~/.zshrc'
alias czenn='code ~/zenn-content'
alias czsh='code ~/.zshrc'
alias czshrc='code ~/.zshrc'

### alias d ###
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
# alias dic='open /System/Applications/Dictionary.app' # cmd + space -> 'dic'
alias dit='git'
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

### alias e ###
alias ef='eslint --fix'
alias elif='elif' # `elif` is a keyword for shell
alias es='eslint --fix'
alias esac='esac' # `esac` is a keyword for shell
alias exc='code .git/info/exclude'
alias exclude='code .git/info/exclude'
alias exp='"C:\Windows\explorer.exe"'
alias expl='"C:\Windows\explorer.exe"'

### alias f ###
alias f='open'
alias fi='fi' # `fi` is keyword for shell
alias fin='open'
alias find='find'
alias finde='open'
alias finder='open'
alias fjord='cd ~/fjord'
alias for='for' # `for` is a keyword for shell
alias force='git push --force-with-lease'
alias furikaeri='git log --reverse --date=iso --since="1week" --pretty=format:"[%cr] %h: %s"'
alias furikaeri='git log --reverse --date=iso --since="1week" --pretty=format:"[%cd] %h: %s"'
# pretty=format

### alias g ###
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
alias gc='git commit --verbose'
alias gca='git commit --amend'
alias gci='code .git/info/exclude'
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
alias gdstat='git diff --stat'
alias gd1='git diff HEAD~'
alias gd2='git diff HEAD~2'
alias gd3='git diff HEAD~3'
alias gd4='git diff HEAD~4'
alias gemail='git config user.email'
alias gf='git fetch'
alias gg='git graph'
# alias gh='gh'

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
alias giff='git diff'
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
alias gista='git diff --stat'
alias gists='git status -s'

#alias git='git'
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
alias gitconfig='code ~/.gitconfig'
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
alias gitree='git tree'
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
alias gm='git merge'
alias gmail='git config user.email'
alias gmerge='git merge'
alias gname='git config user.name'
alias got='git'
alias gpl='git pull'
alias gploms='git pull origin master'
alias gplomai='git pull origin main'
alias gplomain='git pull origin main'
alias gplomas='git pull origin master'
alias gpoh='git push origin HEAD'
alias gpsh='git push'
alias gpshf='git push -f'
alias gphm='git push heroku main'
alias gpsho='git push origin'
alias gpshori='git push origin'
alias gpshfo='git push -f origin'
alias gpshfori='git push -f origin'
# alias gpsoh='git push origin HEAD'
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
alias gremo='git remote'
alias gremot='git remote'
alias gremote='git remote'
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
alias gti='git' # for typo
alias gsm='git switch main'
alias gsw='git switch'
alias gswm='git switch main'
alias gswc='git switch -c'
alias gswcre='git switch -c'
alias gswcreate='git switch -c'
alias gswi='git switch'
alias gswitch='git switch'
alias gswitchc='git switch -c'

### alias h ###
# alias h='cd ~' # home
alias h='heroku'
alias hc='heroku create'
alias hcg='heroku config:get'
alias hcs='heroku config:set'
alias hcreate='heroku create'
alias hdbmg='heroku run rails db:migrate'
alias hdm='heroku run rails db:migrate'
alias he='heroku'
alias herocre='heroku create'
alias herokuopen='heroku open'
alias hlogin='heroku login'
alias hlogs='heroku logs'
alias hlogst='heroku logs --tail'
alias hlt='heroku logs --tail'
alias hlta='heroku logs --tail'
alias hltai='heroku logs --tail'
alias hltail='heroku logs --tail'
alias hli='heroku login --interactive'
alias ho='heroku open'
alias home='cd ~'
alias hr='heroku'
# alias hr='heroku rename'
alias hro='heroku open'
alias hurikaeri='git log --reverse --date=iso --since="1week" --pretty=format:"[%cr] %h: %s"'

alias help='man'
alias hero='heroku'
alias herok='heroku'
alias heroku='heroku'
alias hrds='heroku rake db:seed'
alias hrdm='heroku run rails db:migrate'
alias hrdm='heroku run rails db:migrate'
alias hrdm='heroku run rails db:migrate'
alias hrdbm='heroku run rails db:migrate'
alias hrdbmg='heroku run rails db:migrate'
alias hrrdm='heroku run rails db:migrate'
alias hrrdmg='heroku run rails db:migrate'
alias hrrdbmg='heroku run rails db:migrate'
alias ht='HEADED=1 rails test:all'

### alias i ###
alias ie='code .git/info/exclude'
alias if='if' # if is keyword of shell script
alias ijs='osascript -l JavaScript -i' # JavaScript intepreter?
alias in='git add'
alias ind='git add'
alias index='git add'

### alias j ###

### alias k ###
alias k='kill -9'
alias k9='kill -9'
alias kr='k9 $(head -n 1 ./tmp/pids/server.pid)'
alias krails='k9 $(head -n 1 ./tmp/pids/server.pid)'
alias k9r='k9 $(head -n 1 ./tmp/pids/server.pid)'

### alias l ###
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
alias ls-file="git ls-files"
alias ls-files="git ls-files"
alias logs='git log --stat'
alias logst='git log --stat'
alias ls1='ls -1F'
alias lsf='ls -F'
alias l1='git log --oneline'
alias l1g='git log --graph --oneline'

### alias m ###
alias m='mkdir'
alias makedir='mkdir'
alias md='mkdir'
alias mdp='mkdir -p'
alias mkcd='(){makdir $1 && cd $1}'
alias mp='mkdir -p'
alias mr='miniruby'
alias mrb='miniruby'
alias ms='rails db:migrate:status'
alias mstatus='rails db:migrate:status'
alias mv='mv'
alias mvi='mv -i'

### alias n ###
# alias n='git checkout -b'
alias n='n'
alias name='git diff --name-only'
alias nameonly='git diff --name-only'
alias namestat='git diff --name-stat'
alias name-only='git diff --name-only'
alias name-stat='git diff --name-stat'
alias nd='node'
alias nj='node'
alias nm='npm'
alias no='node'
alias nodejs='node'
alias noedit='git commit --amend --no-edit'
alias now='date +"%m/%d(%a) %H:%M:%S"'
alias nr='npm run'
alias nrs='npm run serve'
alias nrserve='npm run serve'
alias np='npm'
# alias npm='npm'
alias nx='npx'
alias nzp='npx zenn preview'

### alias o ###
alias o='open'
alias ol='git log --oneline'
alias ol1='git log --oneline -1'
alias ol2='git log --oneline -2'
alias ol3='git log --oneline -3'
alias ol4='git log --oneline -4'
alias ol5='git log --oneline -5'
alias ol6='git log --oneline -6'
alias ol7='git log --oneline -7'
alias ol8='git log --oneline -8'
alias ol9='git log --oneline -9'
alias ol10='git log --oneline -10'
alias om='heroku addons:open mailgun'
alias oneline='git log --oneline'
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

### alias p ###
alias phm='git push heroku main'
alias pl='git pull'
alias pll='git pull'
alias plo='git pull origin'
alias ploms='git pull origin master'
alias poh='git push origin HEAD'
alias pso='git push origin'
# alias ps='git push'
alias ps='ps' # for process
alias psh='git push'
alias psoms='git push origin master'
alias pull='git pull'
alias push='git push'

### alias q ###

### alias r ###
alias r='rails'
alias ra='rails'
alias rac='rails console'
alias rag='rails generate'
alias rakr='rake' # for typo
alias rapn='rails plugin'
alias rapn='rails plugin new'
alias ras='rails server'
alias rat='rails test'
alias rail='rails'
alias railsta='rails test:all'
alias railst:a='rails test:all'
alias raisl='rails'
alias rale='rake'
alias rb='ruby'
alias rb18='rbenv local 1.8.6'
alias rb25='rbenv local 2.5.8'
alias rb26='rbenv local 2.6.8'
alias rb27='rbenv local 2.7.4'
alias rb271='rbenv local 2.7.1'
alias rb274='rbenv local 2.7.4'
alias rbenv271='rbenv local 2.7.1'
alias rbenv271='rbenv local 2.7.4'
alias rbenvv='rbenv versions'
alias rbg='rbenv global'
alias rbg27='rbenv global 2.7.4'
alias rbg271='rbenv global 2.7.1'
alias rbg274='rbenv global 2.7.4'
alias rbg3='rbenv global 3.0.2'
alias rbg30='rbenv global 3.0.2'
alias rbg32='rbenv global 3.2.3'
# alias rbl='rbenv local'
alias rbv='rbenv versions'
alias rbversions='rbenv versions'
alias rbvs='rbenv versions'
alias rc='rubocop'
alias rca='rubocop -a'
alias rcac='rails dev:cache'
alias rcach='rails dev:cache'
alias rcache='rails dev:cache'
alias rd='rails db'
alias rddp='rails db:drop'
alias rddr='rails db:drop'
alias rdbdrop='rails db:drop'
alias rdbc='rails db:create'
alias rdbm='rails db:migrate'
alias rdbmr='rails db:migrate:reset'
alias rdbmrs='rails db:migrate:reset'
alias rdbms='rails db:migrate:status'
# alias rdbr='rails db:reset' # 危険な気がする。
alias rdbrs='rails db:reset'
alias rdbrb='rails db:rollback'
alias rdbs='rails db:seed'
alias rddrop='rails db:drop'
alias rdc='rails db:create'
alias rdca='rails dev:cache'
alias rdcac='rails dev:cache'
alias rdcach='rails dev:cache'
alias rdcache='rails dev:cache'
alias rdcr='rails db:create'
alias rdcre='rails db:create'
alias rdcrea='rails db:create'
alias rdcreat='rails db:create'
alias rdcreate='rails db:create'
alias rdm='rails db:migrate'
alias rdms='rails db:migrate:status'
alias rdr='rails db:reset'
alias rdrb='rails db:rollback'
alias rdrollback='rails db:rollback'
alias rdrollback='rails db:rollback'
alias rdre='rails db:reset'
alias rdres='rails db:reset'
alias rdrese='rails db:reset'
alias rdreset='rails db:reset'
alias rds='rails db:seed'
alias remo='git remote'
alias remot='git remote'
alias remote='git remote'
# alias rg='rails g'
alias rg='rg'
alias rgc='rails g controller'
alias rgg='rails g generator'
alias rgm='rails g model'
alias rgs='rails g scaffold'
alias rl18='rbenv local 1.8.6'
alias rl25='rbenv local 2.5.8'
alias rl26='rbenv local 2.6.6'
alias rl27='rbenv local 2.7.1'
alias rl271='rbenv local 2.7.1'
alias rbenv271='rbenv local 2.7.1'
alias rm='rm -v'
alias rmvi='rm -iv'
alias rmi='rm -vi'
alias rn='rails notes'
alias rna='rails notes --annotations'
alias rnafn='rails notes --annotations FIXME NOTE'
alias rnanf='rails notes --annotations FIXME NOTE'
alias robocop='rubocop'
alias ro='rails routes'
alias rou='rails routes'
alias rout='rails routes'
alias route='rails routes'
alias routes='rails routes'
alias rpn='rails plugin'
alias rpn='rails plugin new'
alias rs='rails server'
alias rr='rails routes'
alias rrc='rails routes -c'
alias rrg='rails routes -g'
alias rrh='rails routes --help'
alias rrb='rails db:rollback'
alias rrs='rails db:reset'
alias rt='rails test'
alias rta='rails test:all'
alias rtask='rake --tasks'
alias rtasks='rake --tasks'
alias ru='ruby'
alias rub='ruby'
alias rubo='rubocop'
alias ruboc='rubocop'
alias rubycop='rubocop'
alias ruc='rubocop'
alias rv='rbenv versions'
alias rversions='rbenv versions'
alias rwc='rails webpacker:compile'

### alias s ###
alias s='git status'
alias sbp='source ~/.bash_profile'
alias show='git show'
alias sl='ln -s'
alias sm='git switch main'
alias so='source'
alias sou='source'
alias sour='source'
alias sourc='source'
alias sp='spring'
alias sps='spring stop'
alias spst='spring stop'
alias ss='git status -s'
alias st='git status'
alias std='git diff --stat'
alias stat='stat'
alias statd='git diff --stat'
alias sz='source ~/.zshrc'
alias sw='git switch'
alias swd='git switch develop'
alias swm='git switch main'
alias swich='git switch'
alias switch='git switch'

### alias t ###
alias t='date +"%m/%d(%a) %H:%M:%S"'
alias tasks='rake --tasks'
alias then='then' # `then` is a keyword for shell
alias time='time'

### alias u ###
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

### alias v ###
# alias v='vim'
# alias v='code'
# alias vag='vagrant'
# alias vagrant='vagrant'
alias vs='(){z $1 && code . && cd -}'
alias vs.='code.'
alias vscode='(){z $1 && code . && cd -}'
alias vscode.='code.'
alias vz='vim ~/dotfiles/.zshrc'

### alias w ###
alias wc='wc'
alias wds='bin/webpack-dev-server'
alias webpack-dev-server='bin/webpack-dev-server'
alias while='while' # `while` is a keyword for shell
alias ws='bin/webpack-dev-server'
alias wserver='bin/webpack-dev-server'

### alias x ###

### alias y ###
alias y='yarn'
alias ya='yarn'
alias yar='yarn'
alias yi='yarn install'
alias yic='yarn install --check-files'
alias yicf='yarn install --check-files'

### alias  ###
# alias z='z'
alias zenn='npx zenn'
alias zennserve='npx zenn preview'
alias zennpre='npx zenn preview'
alias zennpreview='npx zenn preview'
alias zp='npx zenn preview'
alias zs='npx zenn preview'
alias zshrc='code ~/dotfiles/.zshrc'

alias 1l='git log --oneline'


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

switch_branch() {
    if [ -n "$ZSH_VERSION" ]; then
      branches=("${(@f)$(git branch | sed 's/[\* \t]//g')}")
    elif [ -n "$BASH_VERSION" ]; then
        readarray -t branches < <(git branch | sed 's/\*//g; s/^[ \t]*//; s/[ \t]*$//')
    else
        echo "Unsupported shell."
        exit 1
    fi

    # echo "利用可能なブランチ:"
    select branch in "${branches[@]}"; do
        if [ -n "$branch" ]; then
            git switch "$branch"
            break
        else
            echo "無効な選択です。もう一度試してください。"
            break
        fi
    done
}

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


export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="$PATH:$HOME/bin"


# https://twitter.com/mattn_jp/status/1379974465354788865
# alias rm="rm -i"
# alias mv="mv -i"
# alias cp="cp -i"

export AC_LIBRARY_PATH="${HOME}/rubybook/ac-library-rb"

# export PATH="$PATH:$HOME/.asdf/shims"

# 2022/4/24, これを入れないと0.9.0になる。
# export ASDF_DIR="/usr/local/Cellar/asdf/0.10.0/libexec"
export ASDF_DIR="/usr/local/opt/asdf/libexec"

. /usr/local/opt/asdf/libexec/asdf.sh
# ↑
# $ echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

# echo ${ZDOTDIR:-~}
# /Users/uni

export PATH="/usr/local/sbin:$PATH"
# export PATH="$PATH:${HOME}/node_modules/.bin"
export PATH="$PATH:/usr/local/bin/" # For npm global install by homebrew

# npm list -g
# ${HOME}/.asdf/installs/nodejs/16.2.0/.npm/lib
# ${HOME}/.asdf/installs/nodejs/16.2.0/.npm/lib/node_modules



# https://github.com/amberframework/amber/issues/1163
# https://crystal-lang.org/install/on_mac_os/
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig

# for pyenv
export PATH="$HOME/.pyenv/shims:$PATH"


# export EDITOR=code

# https://github.com/RomainFranceschini/icrystal
export PATH="${PATH}:${HOME}/oss/icrystal/bin"

## for debug
# echo $PATH | tr ":" "\n"ß

# WindowsでPATHの一覧を見る。:を改行\nに置換。
# sed /    /   \\ $' \ /g
# echo $PATH | sed s/:/\\$'\n'/g
# echo $PATH | sed 's/:/\'$'\n/g
# echo $PATH | tr ':' '\n'
