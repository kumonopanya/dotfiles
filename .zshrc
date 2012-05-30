#######################################################################
#######################################################################
#
#	.zshrc
#	2012年4月7日
#	Ubuntu11.04(VMware用)の設定
#
#
#######################################################################
#######################################################################
#######################################################################
#
#設定してあるキー入力

#	Ctrl-P	上へ	古い
#	Ctrl-N	下へ	新しい

#	Ctrl-R	インクリメンタル検索
#	Ctrl-R	続けて C-r を打て ば次の候補を検索

#h1とコマンドを打つと全履歴が表示
#function h1 { history -E 1 }
#	"find" と "tr" という文字 列が含まれていたのを覚えているなら、
#	% h1 | grep find | grep tr

#C-/ キーでアンドゥ (編集のやり直し) が行える。


#gem query --remote --all --name-matches "^rails$"
#gem query --remote --all --name-matches "^rails$"
#gem query --remote --all --name-matches "^rails$"
#
#######################################################################
#######################################################################


#毎日が例外 » LinuxでCapsLockをCtrlに(交換でなく)変更する
#http://daily.belltail.jp/?p=480

#コマンド補完設定専用設定
#"ls -"と入力して"Tab"キーを押す

#xmodmap ~/.Xmodmap



#######################################################################
#######################################################################

#PATH 設定
#export PATH=~/ruby/rubyrefm:$PATH
#/usr/local/bin/
#/usr/local/sbin /usr/local/bin /sbin /bin /usr/sbin /usr/bin
#export PATH=/home/hi:$PATH



#######################################################################

#JavaScriptTDD
export JSTESTDRIVER_HOME=~/JsTestDriver
alias jst="java -jar $JSTESTDRIVER_HOME/JsTestDriver-1.3.3d.jar --port 4224"
alias ta="java -jar $JSTESTDRIVER_HOME/JsTestDriver-1.3.3d.jar --tests all"

#テストはブラウザを立ち上げてから

alias cr='cd ~/Workspace/ruby'
alias cj='cd ~/Workspace/javascript'

#######################################################################

#java -jar $JSTESTDRIVER_HOME/JsTestDriver-1.3.3d.jar --port 4224
#java -jar $JSTESTDRIVER_HOME/JsTestDriver-1.3.3d.jar --tests all


#######################################################################

#外部ツール1
# p4merge
# chmod +x p4merge
#パスが通っていない時の実行方法
# ./p4merge
#パスが通っている時の実行方法
# p4merge

#外部ツール用のディレクトリ
export PATH=~/Public/p4merge/bin:$PATH
P4MERGE=~/Public/p4merge/bin/p4merge

#${P4MERGE} $*
#${HOME}"/Applications/p4merge.app/Contents/Resources/launchp4merge" $*
#[ $# -eq 7 ] && ${P4MERGE} "$2" "$5"
#[ $# -eq 7 ] && ${HOME}/local/bin/p4merge "$2" ${PWD}/"$5"



#######################################################################


#ant 設定
#ソースを解凍した場所
#ANT_HOME=/usr/local/ant
#export PATH=$PATH:$ANT_HOME/bin



#######################################################################
#######################################################################

#---- exitでSIGHUPを送らない --------------------------------------------------------
setopt nocheckjobs
# exitでSIGHUPを送らないようにする



#######################################################################
#######################################################################

#MacPortsインストール

#MacPortsの各種コマンドは、/opt/local/bin/以下にインストールされるので
#~/.zshrc のPATHとMANPATHを設定。

#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH

#設定後下記のコマンドを実行
#sudo port -d selfupdate
#sudo port -d sync



#######################################################################
#######################################################################
#######################################################################

#rbenv環境設定

#path=($HOME/.rbenv/bin(N) $path)
#eval "$(rbenv init -)"



#######################################################################
#######################################################################

#milkode(GUIグラフィックソース検索)

#export LD_LIBRARY_PATH=/home/hi/.rvm/gems/ruby-1.8.7-p352@milk6/gems/rroonga-1.2.4/vendor/local/lib:/usr/lib

#LD_LIBRARY_PATH=/home/hi/.rvm/gems/ruby-1.9.2-p290@milk7/gems/rroonga-1.2.4/vendor/local/lib:LD_LIBRARY_PATH=/home/hi/.rvm/gems/ruby-1.8.7-p352@milk6/gems/rroonga-1.2.4/vendor/local/lib:/usr/lib

LD_LIBRARY_PATH=/usr/lib

#LD_LIBRARY_PATH=/home/hi/.rvm/gems/ruby-1.8.7-p352@milk6/gems/rroonga-1.2.4/vendor/local/lib:$LD_LIBRARY_PATH
#LD_LIBRARY_PATH=/home/hi/.rvm/gems/ruby-1.9.2-p290@milk7/gems/rroonga-1.2.4/vendor/local/lib:$LD_LIBRARY_PATH
#LD_LIBRARY_PATH=/home/hi/.rvm/gems/ruby-1.9.3-preview1@milk8/gems/rroonga-1.2.4/vendor/local/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

#/home/hi/.rvm/gems/ruby-1.9.3-preview1@milk8/gems/rroonga-1.2.4/vendor/local/lib:

#cd milk
#cp io.rb /home/hi/.rvm/gems/ruby-1.8.7-p352@milk6/gems/archive-zip-0.3.0/lib/archive/support/io.rb
#cp io.rb /home/hi/.rvm/gems/ruby-1.9.2-p290@milk7/gems/archive-zip-0.3.0/lib/archive/support/io.rb
#cp io.rb /home/hi/.rvm/gems/ruby-1.9.3-preview1@milk8/gems/archive-zip-0.3.0/lib/archive/support/io.rb



#######################################################################
#######################################################################

#rvmインストール
#rvmインストール後のパス設定 2010-09-17

#.zshenv に書く
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"



# This loads RVM into a shell session.

#環境変数GEM_PATH
#GEM_HOMEはinstall先。
#GEM_PATHは読込むだけ。

#echo $
#GEM_HOME=/home/hi/.rbenv/versions/1.9.3-p0/lib/ruby/gems/1.9.1/bin
#/home/hi/.rbenv/versions/1.9.3-p0/bin/gem
#/home/hi/.rbenv/versions/1.9.3-p0/lib/ruby/gems/1.9.1/bin/rspec


export GEM_HOME



#######################################################################
#######################################################################

#gisty
#gistを便利にするツール

export GISTY_DIR=~/dev/gisty


#######################################################################
#######################################################################

#rubyrefm
#ruby日本語マニュアルインストールパス設定

#refe
#refe String concat
#export PATH=~/ruby/rubyrefm:$PATH

#刷新計画
#ruby server.rb を実行
alias ruma="~/ruby/rubymanual/server.rb"
# Webブラウザから、http://localhost:10080/ にアクセス

# ruby Gemsからインストールしたマニュアル
# gem server
# gem server
# gem server



#######################################################################
#######################################################################

# 補完リストが多いときに尋ねる数
# -1 : 尋ねない
#  0 : ウィンドウから溢れるときは尋ねる
LISTMAX=0
export LISTMAX


#######################################################################
#######################################################################

#ruby1.9言語編 p11
export RI="--format ansi --width 70"


#export PATH=/home/hi:$PATH


#######################################################################
#######################################################################

#history
#使用方法
#
HISTFILE=${HOME}/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

setopt hist_ignore_dups      # 直前と同じコマンドラインはヒストリに追加しない
setopt share_history         # コマンド履歴ファイルを共有する

setopt hist_ignore_all_dups  # 重複するコマンド行は古い方を削除
setopt append_history        # 履歴を追加 (毎回 .zsh_history を作るのではなく)
setopt inc_append_history    # 履歴をインクリメンタルに追加
setopt hist_no_store         # historyコマンドは履歴に登録しない
setopt hist_reduce_blanks    # 余分な空白は詰めて記録



#######################################################################

#zshで特定のコマンドをヒストリに追加しない条件を柔軟に設定する - ess sup
#http://d.hatena.ne.jp/mollifier/20090728/p1

zshaddhistory() {
    local line=${1%%$'\n'}
    local cmd=${line%% *}

    # 以下の条件をすべて満たすものだけをヒストリに追加する
    [[ ${#line} -ge 5
        && ${cmd} != (l|l[sal])
        && ${cmd} != (c|cd)
        && ${cmd} != (m|man)
    ]]
}



#######################################################################
#######################################################################

#コマンド補完設定専用設定

###最強補完呪文コンプイニット
###多くのコマンドに対して非常に便利な補完機能が用意されている。
#例） "ls -"と入力して"Tab"キーを押す
#補完が使えるコマンド
#configureスクリプト
#make
#ant
#ssh
#scp

#この設定は絶対必要
autoload -U compinit
compinit
#autoload -U compinitcompinit


setopt auto_list		# 補完候補が複数ある時に、一覧表示する
setopt list_types		# auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示
setopt auto_menu		# 補完キー（Tab, Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt nolistbeep		# 補完候補表示時などにピッピとビープ音をならないように設定



################################
################################

# パスの最後に付くスラッシュを自動的に削除しない
setopt noautoremoveslash

# = 以降でも補完できるようにする( --prefix=/usr 等の場合)
setopt magic_equal_subst

# lsコマンドの補完候補にも色付き表示
eval `dircolors`
zstyle ':completion:*:default' list-colors ${LS_COLORS}
# kill の候補にも色付き表示
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'



################################
################################


## 補完候補のカーソル選択を有効にする。
zstyle ':completion:*:default' menu select=1

# = 以降でも補完できるようにする( --prefix=/usr 等の場合)
# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# カッコの対応などを自動的に補完する
setopt auto_param_keys



################################
################################

###移動したディレクトリを記録しておくと、いざというときに便利
###cd -[ここでタブキーを押す]
###これまでに移動したディレクトリが一覧表示される
setopt auto_pushd

###ディレクトリ名を入力するだけでカレントディレクトリを変更できる。
setopt auto_cd

## 同じディレクトリを pushd しない
## ディレクトリスタックに重複する物は古い方を削除
setopt pushd_ignore_dups



################################
################################

###補完候補つめて表示
setopt list_packed




#######################################################################
#######################################################################

#左プロンプト1の設定
#	%Uからアンダーラインを引く。
#	%uの位置でアンダーラインを終了する。
#	$USER%%% %を３つ設定することにより名前の右にちょうど%が表示される。
#	理由はコマンドの前に%を奥のは世界共通だから?

#rvm不使用時（zsh）
#PROMPT="%U[%D %T] $USER%%% %u "


#rvm使用時（zsh）
#rvm-prompt
#i ruby
#v 1.9.2
#g	@rails3
#[10-12-24 19:31] ruby-1.9.2@rails3 hi%
#PROMPT="%U[%D %T] \$(~/.rvm/src/rvm/binscripts/rvm-prompt i v g ) $USER%%% %u "
#PROMPT="%U[%D %T] \$(~/.rvm/src/rvm/binscripts/rvm-prompt i v g ) $USER%%% %u "
#PROMPT="%U[%D %T] \$(~/.rvm/src/rvm/binscripts/rvm-prompt g ) $USER%%% %u "
#PROMPT="%U[%T] \$(~/.rvm/src/rvm/binscripts/rvm-prompt g ) $USER%%% %u "
PROMPT="%U[%T] \$(~/.rvm/src/rvm/binscripts/rvm-prompt g ) %%%u "


# % dake
#PROMPT="%% "


#PROMPT="%U[%D %T] $USER%%% %u "


#左プロンプト2の設定
#PROMPT2は複数行入力時などに表示されるプロンプト
PROMPT2="%_%% "



################################
################################

#SPROMPTは入力ミスを確認する場合に表示されるプロンプト
SPROMPT="%r is correct? [n,y,a,e]: "               # 入力が違う時のメッセージ



#######################################################################
#######################################################################
#######################################################################

#右プロンプトの設定
#バージョン管理ツール情報の付加
#gitのブランチ＆pwd
#バージョン管理されてないディレクトリでは非表示
#autoload -Uz vcs_info

#右プロンプト git表示スタイル設定
#formats
#zstyle ':vcs_info:*' enable git svn hg bzr
#zstyle ':vcs_info:*' formats '(%s)-[%b]'
#zstyle ':vcs_info:*' formats '(%s)-[%b]-{%S}'
#zstyle ':vcs_info:*' formats '%s%b%r%S'
#zstyle ':vcs_info:*' formats '(%s)-(%r)-[%b]-{%S}'

#actionformats
#zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'



#バージョン管理ツール情報＋ツリー情報
RPROMPT="%1(v|%F{yellow}%1v%f|)[%~]"
#ツリー情報のみ
#RPROMPT="[%~]"



#######################################################################

#[Zsh][Git] git のブランチ名 *と作業状態* を zsh の右プロンプトに表示＋ status に応じて色もつけてみた
#http://d.hatena.ne.jp/uasi/20091025/1256458798

autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

function rprompt-git-current-branch {
        local name st color gitdir action
        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
                return
        fi
        name=`git branch 2> /dev/null | grep '^\*' | cut -b 3-`
        if [[ -z $name ]]; then
                return
        fi

        gitdir=`git rev-parse --git-dir 2> /dev/null`
        action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

        st=`git status 2> /dev/null`
        if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
                color=%F{green}
        elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
                color=%F{yellow}
        elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
                color=%B%F{red}
        else
                 color=%F{red}
         fi

        echo "$color$name$action%f%b "
}

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

RPROMPT='[`rprompt-git-current-branch`%~]'



#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################



###############################################
# キーバインド                                #
###############################################
# viライクキーバインド
bindkey -v

###############################################

#Vim風のキーバインド
#bindkey -vで設定されるVi風の代表的なショートカットキー

#ショートカットキー	操作内容
#(編集モード)ESC	コマンドモードへ移行
#(編集モード)ESC	コマンドモードへ移行
#(編集モード)ESC	コマンドモードへ移行
#(コマンドモード)I	編集モードへ移行(行頭から入力)
#(コマンドモード)A	編集モードへ移行(行末から入力)
#(コマンドモード)i	編集モードへ移行(カーソルから挿入)
#(コマンドモード)a	編集モードへ移行(カーソルの次の文字から挿入)
#(コマンドモード)o	編集モードへ移行(次の行から入力)
#(コマンドモード)O	編集モードへ移行(前の行から入力)
#(コマンドモード)dd	一行削除
#(コマンドモード)D	カーソルから行末まで削除
#(コマンドモード)x	Deleteキー
#(コマンドモード)X	BackSpaceキー
#(コマンドモード)yy	コピー
#(コマンドモード)p	ペースト





#######################################################################
#######################################################################

#X-Window上で[Esc]と[半角/全角]キーを交換する方法
#wps-C » X-Window上で[Esc]と[半角/全角]キーを交換する方法
#http://bit.ly/mElTEe


#VMware de install surutoki windowsgawa wo henkou suru.

#Escape						 9=>Zenkaku_Hankaku
#Zenkaku_Hankaku	49=>Escape
#Tab							23
#Caps							66=>Control_L
#Shift_L					50
#Control_L				37

#全角/半角キー Escキー交換
xmodmap -e "keycode  9 = Zenkaku_Hankaku"
xmodmap -e "keycode 49 = Escape"
#xmodmap -e "keycode 37 = Control_L"
#xmodmap -e "keycode 66 = Control_L"



#######################################################################
#######################################################################

###コマンド履歴の有効化と検索用のショートカットの設定	2度入力しない

###Ctrl-P	上へ	古い
###Ctrl-N	下へ	新しい

###############################
###############################

#矢印キーなどのキーの確認方法は、
#矢印キーなどのキーの確認方法は、
#矢印キーなどのキーの確認方法は、
#矢印キーなどのキーの確認方法は、
#矢印キーなどのキーの確認方法は、
#Ctrl-v を押下した後目的のキーを押下する。
#Ctrl-v を押下した後目的のキーを押下する。
#Ctrl-v を押下した後目的のキーを押下する。
#Ctrl-v を押下した後目的のキーを押下する。
#Ctrl-v を押下した後目的のキーを押下する。

#例
#centos5
#Unix$ [A <= 上矢印キーを押下
#Unix$ [B <= 下矢印キーを押下
#Unix$ [C <= 右矢印キーを押下
#Unix$ [D <= 左矢印キーを押下

###############################
###############################

# コマンド履歴の検索機能の設定
# ^[  は「エスケープ」
# viなら    Ctrl-v ESC
# Emacsなら Ctrl-q ESC
# viで編集する場合
# 上2行は Ctrl-v を押下した後、希望のキーを押下
# 下2行は「エスケープ」の後にキーの端末コードを入力

#履歴からsearchを矢印キーで行う。
autoload history-search-end

#複数行の編集には↓↑←→を使う
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

#コマンド履歴の検索機能はCtrl-PとCtrl-Nに割り当て
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end



bindkey "^[OA" history-beginning-search-backward-end
bindkey "^[OB" history-beginning-search-forward-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
# 複数行コマンドの場合、上記の設定だと少々不都合
# tcshの様にする場合は以下のようにする

# 全履歴の一覧を出力する
function h1 { history -E 1 }
# C-p ひとつ前の履歴

###############################





# C-r インクリメンタルサーチで履歴検索
# C-r (history-incremental-search-backward)
#続けて C-r を打て ば ``dif'' を含む次の候補を検索できる。
#続けて C-r を打て ば ``dif'' を含む次の候補を検索できる。
#続けて C-r を打て ば ``dif'' を含む次の候補を検索できる。
# インクリメンタルサーチの設定
#注意:search-forwardはフリーズする。
#bindkey "^R" history-incremental-search-backward
#bindkey "^S" history-incremental-search-forward
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward


#history-all | grep find | grep tr
#history-all | grep find | grep tr
#history-all | grep find | grep tr






#######################################################################
#######################################################################

#補完候補を選択中に行き過ぎたら逆に進むコマンド設定
# reverse menu completion binded to Shift-Tab
#bindkey "\e[Z" reverse-menu-complete
#bindkey '^i'	menu-expand-or-complete
#bindkey '^[i'	expand-or-complete



#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################

# cd をしたときにlsを実行する
alias ls='ls --color=auto'
#alias sl="ls"
function chpwd() { ls -a }

#alias ls="ls -G -w"とfunction chpwd() { ls }
#の位置関係を逆にすると。ディレクトリ移動時に色がつかなくなる。


#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################

# 単語として認識したい文字
export WORDCHARS='*?-[]~!#%^(){}<>|`@#%^*()+:?'

export LANG=ja_JP.UTF-8
export TERM=xterm-256color
export EDITOR=vim

# 色付プロンプトの設定
autoload colors
colors

## zsh editor
autoload zed

# Colours {{{
local HOSTNAME_COLOR=$'%{\e[38;5;190m%}'
local USERNAME_COLOR=$'%{\e[38;5;199m%}'
local PATH_COLOR=$'%{\e[38;5;61m%}'
local RVM_COLOR=$'%{\e[38;5;31m%}'
local VCS_COLOR=$'%{\e[38;5;248m%}'
# }}}

#######################################################################
#######################################################################

#ディレクトリ color setting
export LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx

# default mask
umask 002



#######################################################################
#######################################################################

#zshの固定カラー
#black
#red
#green
#yellow
#blue
#magenta    紫
#cyan       青
#white

#ディレクトリに色を付ける
#環境変数LS_COLORSで使う対象のうち代表的なもの
#di: ディレクトリ
#ln: シンボリックリンク
#so: ソケットファイル
#pi: FIFOファイル
#ex: 実行ファイル
#bd: ブロックスペシャルファイル
#cd: キャラクタスペシャルファイル
#su: setuidつき実行ファイル
#sg: setgidつき実行ファイル
#tw: スティッキビットありother書き込み権限つきディレクトリ
#ow: スティッキビットなしother書き込み権限つきディレクトリ

#環境変数S_COLORSで指定する色
#00: なにもしない
#01: 太字化
#04: 下線
#05: 点滅
#07: 前背色反転
#08: 表示しない
#22: ノーマル化
#24: 下線なし
#25: 点滅なし
#27: 前背色反転なし

#(前景色)
#30: 黒(前景色)
#31: 赤(前景色)
#32: 緑(前景色)
#33: 茶(前景色)
#34: 青(前景色)
#35: マゼンタ(前景色)ピンク
#36: シアン(前景色)薄い水色
#37: 白(前景色)
#39: デフォルト(前景色)

#(背景色)
#40: 黒(背景色)
#41: 赤(背景色)
#42: 緑(背景色)
#43: 茶(背景色)
#44: 青(背景色)
#45: マゼンタ(背景色)ピンク
#46: シアン(背景色)薄い水色
#47: 白(背景色)
#49: デフォルト(背景色)

##########################################################################
##########################################################################

#ターミナルで pcolor を実行すると色の一覧が出力される。
function pcolor() {
    for ((f = 0; f < 255; f++)); do
        printf "\e[38;5;%dm %3d#\e[m" $f $f
        if [[ $f%8 -eq 7 ]] then
            printf "\n"
        fi
    done
    echo
}



##########################################################################
##########################################################################

#色の個別設定
#ディレクトリ	太文字、薄い水色
export LS_COLORS='di=01;36'



##########################################################################
##########################################################################

zstyle ':completion:*' list-colors 'di=36' 'ln=35'

#lsコマンドの補完候補にも色付き表示eval `dircolors`
zstyle ':completion:*:default' list-colors ${LS_COLORS}

# ファイルリスト補完でもlsと同様に色をつける｡
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# kill の候補にも色付き表示
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

# sudoも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin



#######################################################################
#######################################################################

#setopt
#setopt
#setopt
#setopt
#setopt
#setopt

# 8 ビット目を通すようになり、日本語のファイル名などを見れるようになる
setopt print_eightbit
# 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
# 複数のリダイレクトやパイプなど、必要に応じて tee や cat の機能が使われる
setopt multios
# 色を使う
setopt prompt_subst
# history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
# 文字列末尾に改行コードが無い場合でも表示する
unsetopt promptcr
# コピペの時rpromptを非表示する
setopt transient_rprompt
# 余分な空白は詰める
setopt hist_reduce_blanks
# 補完候補リストの日本語を適正表示
setopt print_eight_bit
# 上書きリダイレクトの禁止
setopt no_clobber
# 未定義変数の使用の禁止
#setopt no_unset
# 内部コマンドの echo を BSD 互換にする
setopt bsd_echo
# 既存のファイルを上書きしないようにする
setopt clobber
# 最後がディレクトリ名で終わっている場合末尾の / を自動的に取り除く
setopt auto_remove_slash



# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
# {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl
# シンボリックリンクは実体を追うようになる
setopt chase_links

# サスペンド中のプロセスと同じコマンド名を実行した場合はリジュームする
setopt auto_resume



#######################################################################
#######################################################################

# 未使用の設定
# 未使用の設定
# 未使用の設定

###入力したコマンド名が間違っている場合には修正
# コマンドのスペルチェックをする
#setopt correct

#先方予測機能を有効に設定 - この機能を使いこなることができるか?
#autoload predict-on
#predict-on

# 補完候補が複数ある時、一覧表示 (auto_list) せず、すぐに最初の候補を補完する
#setopt menu_complete

# =command を command のパス名に展開する
#setopt equals

# ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
#setopt extended_glob

# zsh の開始・終了時刻をヒストリファイルに書き込む
#setopt extended_history

# Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
#setopt NO_flow_control

# 各コマンドが実行されるときにパスをハッシュに入れる
#setopt hash_cmds

# コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
#setopt hist_ignore_space

# ヒストリを呼び出してから実行する間に一旦編集できる状態になる
#setopt hist_verify

# シェルが終了しても裏ジョブに HUP シグナルを送らないようにする
#setopt NO_hup

# Ctrl+D では終了しないようになる（exit, logout などを使う）
#setopt ignore_eof

# コマンドラインでも # 以降をコメントと見なす
#setopt interactive_comments

# メールスプール $MAIL が読まれていたらワーニングを表示する
#setopt mail_warning

# ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
#setopt mark_dirs

# ファイル名の展開で、辞書順ではなく数値的にソートされるようになる
#setopt numeric_glob_sort

# コマンド名に / が含まれているとき PATH 中のサブディレクトリを探す
#setopt path_dirs

# 戻り値が 0 以外の場合終了コードを表示する
#setopt print_exit_value

# pushd を引数なしで実行した場合 pushd $HOME と見なされる
#setopt pushd_to_home

# rm * などの際、本当に全てのファイルを消して良いかの確認しないようになる
#setopt rm_star_silent

# rm_star_silent の逆で、10 秒間反応しなくなり、頭を冷ます時間が与えられる
#setopt rm_star_wait

# for, repeat, select, if, function などで簡略文法が使えるようになる
#setopt short_loops

# デフォルトの複数行コマンドライン編集ではなく、１行編集モードになる
#setopt single_line_zle

# コマンドラインがどのように展開され実行されたかを表示するようになる
#setopt xtrace



#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################

#エイリアス
#エイリアス
#エイリアス

###エイリアスと必須オプション
###setopt complete_aliasesを設定しておけば、
###補完される前にオリジナルのコマンドまで展開してチェックされる
###(ただし、表示はエイリアスのまま)。
setopt complete_aliases     # aliased ls needs if file/dir completions work

#Ubuntu でのvimの場所。
#export EDITOR=/usr/share/vim
#
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/local/bin/vim
#export EDITOR=/bin/vi
#EDITOR=vim
#export vim

#alias vi=vim
#alias vi='sudo vi'
#alias vi='/bin/vi'

#######################################################################

#基本的なalias

# -Eオプションは 時間を行頭に付加
#alias h='history -E -1000'
alias     h='history '
alias    la="ls -a"

#alias   ll="ls -l"
#alias   ll='ls -ltr'
#alias   ll='ls -lF --color | more'
alias    ll='ls -lF --color '

#alias  lla="ls -l -a"
#alias  lla='ls -laF --color | more'
alias   lla='ls -laF --color '


#alias   su="su -l"

###cdコマンド
alias   cd.='cd ..'
alias  cd..='cd ..'
alias cd...='cd ../..'
alias  home='cd ~'
alias    hi='cd ~'

#alias    re='sudo /etc/init.d/apache2 restart'
#alias   apa='cd /etc/apache2'


alias     d='date '

alias   ccc='clear;cucumber'
alias    cu='clear;cucumber'
alias    au='autotest --style rspec2'
alias    gu='guard'

alias    ap='cd ~/app'
alias    ru='cd ~/app/ruby'



#######################################################################
#######################################################################
#######################################################################

#autojump
#zsh使いなら効率改善のため知っておきたいAUTOJUMP - Glide Note - グライドノート
#http://blog.glidenote.com/blog/2012/02/29/autojump-zsh/

# Ubuntu
. /usr/share/autojump/autojump.sh

# $fpath
# sudo cp /usr/share/zsh/functions/Completion/Unix/_j /usr/local/share/zsh/site-functions/

# alias j="autojump"

# autojump出来るディレクトリのリストは
# jumpstat
# jumpstat
# jumpstat
# で確認が出来ます。



#######################################################################

#Disk情報コマンド
alias du="du -h"
alias df="df -h"

## fool ploof
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

###拡張子に応じたコマンドを自動実行 「alias -s」
#接尾辞エイリアス
##拡張子に応じたコマンドを自動実行
#alias -s    接尾辞エイリアスオプション
alias -s txt=cat
alias -s ru=vi
alias -s rb=vi
#alias -s pdf=xpdf

#######################################################################
#######################################################################

#rails
#alias  rai="rails "
#alias  bu="bundle console"

#ruby pry
#alias  irb='pry'

# rails
alias r="rails"
alias rr="routes_cache | less"
alias rrg="routes_cache | grep"
alias rrr="routes_cache --force"
alias rrrg="routes_cache --force | grep"
alias rspec='rspec -c'
alias fu='bundle exec rspec --format Fuubar --color spec'
alias nyan='bundle exec rspec --format NyanCatFormatter --color spec'
alias five='bundle exec rspec --format Fivemat --color spec'
alias br='bundle exec rake spec'
alias rdm='rake db:migrate'
alias b='bundle exec'
alias bundle-init='bundle install --path .bundle/gems'
alias plog='grc powder applog' # dependent on grc
alias powlog='grc powder applog' # dependent on grc
alias rails-init='bundle install --path .bundle/gems && rake db:create db:migrate && powder link'



#######################################################################

#CREAM
#CCREAM=/home/hi/cream
#Cexport CREAM
#alias ee='gvim -U NONE -u "\$CREAM/creamrc" "$@"'

#gvim -U NONE -u "\$CREAM/creamrc" "$@"

#alias ee='./mycream.sh'


#######################################################################
#######################################################################

#Rspec
#
#alias   spec='rspec '
#alias     sp='rspec '
#alias  ser='ruby script/server'
#alias   ser='rails server'





#######################################################################
#######################################################################
#######################################################################

#特定コマンド用

#gitコマンド用
#GITの設定
export GIT_AUTHOR_NAME=kumonopanya
export GIT_AUTHOR_EMAIL=kumonopanya@gmail.com

#基本ステージ、コミット
alias   ad='git add .'

#間違えてaddした時にaddを外すコマンド
#git rm --cached <filename>



alias  con='git config '
alias show='git show'

#変更が加えられたファイルを表示する
alias   st='git status'

#コミット
alias   cm='git commit -m '
#addとcommitをまとめて行う。
#使用例
#ca "twitter"
alias   ca='git commit -a -m '
alias   ga='git commit -a -m '

#git commitを「-a」オプションを付けて実行すると変更が加えられたファイルを自動検出してコミットできる。
#ただし、この場合新規に作成されたファイルはコミット対象にはならない。
# -m エディタを起動しないで直接書く。

alias   gc='git commit -v'
alias  gca='git commit -a -v'

alias  gap='git add -p'

#プッシュ、プル
#alias   gp='git push'
#alias   gl='git pull'


alias push='git push -u origin master'



#masterをアップロード。
alias  gpo='git push origin'
alias  gpr='git pull --rebase'


#log
#alias  llo='git log'
alias  glg='git log --pretty=oneline --abbrev-commit'
alias  llo='git log --graph --oneline -n 10'
alias   lo='git log --graph --all --decorate --oneline -n 20'




#ブランチ
#ブランチを作る。名前を後ろに付けないと現在の情報を表示。
alias   br='git branch'
alias   gb='git branch'
#ブランチに移動する。
alias   co='git checkout'
#新しくブランチを作ってそこに移動する。
alias  cob='git checkout -b '
alias  brc='git checkout -b '
#add後の変更に戻る。（戻れるのは1回だけ）
alias  coo='git checkout .'
#コミット後の最初の変更に戻る。
alias ccoo='git checkout HEAD .'
#ブランチを削除
#git branch -d 'name'

#指定したブランチの変更を現在のブランチに取り込む
alias  mer='git merge '



#diff
#add後の変更と現在の差
alias  dif='git diff'
alias  gdd='git diff'
#コミット後の最初の変更と現在の差
alias difh='git diff HEAD'
alias  gdh='git diff HEAD'
alias  gdc='git diff --cached'



#######################################################################

#Gitを使いこなすための20のコマンド - SourceForge.JP Magazine : オープンソースの話題満載
#http://sourceforge.jp/magazine/09/03/16/0831212/3
#「git reset」－直前のコミットを取り消す
#git reset --soft HEAD^
#　この場合、作業ツリーの内容はコミット時のままで「コミットした」ということだけが取り消される。
#もし作業ツリーに加えた変更点までも取り消したい場合は、
#「--soft」の代わりに「--hard」を指定すればよい、
#また、コミットされていた内容は「ORIG_HEAD」という名前で参照できる。
#これを利用して、次のように実行することで現在の状態とコミットされていた状態の差分を表示できる。
# git diff ORIG_HEAD

#コマンド11：「git revert」－作業ツリーを指定したコミット時点の状態にまで戻す
# 「git revert」は作業ツリーを指定したコミット時点の状態にまで戻し、
# コミットを行うコマンドである。引数にはコミットを指定するハッシュ文字列もしくはタグ名などを指定する。
#$ git revert ＜コミット名＞
#  git revertはgit resetと似ているが、作業ツリーを差し戻したという情報が作業履歴に残るのが異なる点だ。



#######################################################################

#Pro Git - Pro Git 2.1 Git の基本 Git リポジトリの取得
#http://progit.org/book/ja/ch2-1.html

# 間違えて大量にaddした場合
# マジックコメントは\でエスケープして使う。
# 実行例
#git rm --cached .vim/doc/\*



#######################################################################
#######################################################################
#######################################################################

#検索

#find / -print | grep
#  *fe 検索文字列
alias   fe='     find . -print | grep'
alias  sfe='     find ~ -print | grep'
alias  ufe='     find ~ -print | grep'
alias sufe='sudo find / -print | grep'


#######################################################################
#######################################################################
#######################################################################
#######################################################################
#######################################################################

#rvmマンド用

#rvm 初期設定
#ruby-1.9.2@rails3
#rvm default
# rvm use 1.9.3@rails3 --default
# rvm use 1.9.3@global --default
# rvm use 1.8.7@RSpec --default
# rvm use 1.9.3@RSpec --default
rvm use 1.9.2@rails --default



#現在の情報の確認用alias
#rvm
alias rr="gem list;echo;git --version;echo rspec;rspec -v;echo gem;gem -v;rvm --version;ruby -v;"

#######################################################################

#再インストール用
#インストールコマンド
#bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
#rvm list
#rvm list known
#rvm install 1.9.2
#rvm use 1.9.2
#rvm gemset create rails3
#rvm gemset use rails3

#######################################################################

#gemset を作成する。
#gemset を作成する。
#gemset を作成する。

#RVM で 使用している Ruby のバージョン毎に、
#共通の gem を インストールするための gemset。

# rvm gemset use global
# rvm use 1.9.3@global --default

# rvm use 1.9.3
# rvm gemset create RSpec
# rvm gemset use RSpec
# rvm use 1.9.3@RSpec --default

# rvm list known
# rvm install 1.9.2
# rvm use 1.9.2
# rvm gemset create rails
# rvm use 1.9.2@rails --default

# rvm use 1.8.7
# rvm gemset create RSpec
# rvm gemset use RSpec
# rvm use 1.8.7@RSpec --default

# gem をバージョンを指定してインストール。
# gem install rspec -v 1.0.8



#######################################################################

#alias 19="rvm use 1.9.3@rails3
#alias 18="rvm use 1.8.7@rails2
#alias rs="rvm use 1.9.3@RSpec

#######################################################################

#rbenv用
#alias rr="gem list;echo;git --version;echo gem;gem -v;rbenv version;ruby -v;"




#######################################################################
#######################################################################
#######################################################################

#jenkins

#jenkins起動
#jenkins.warファイルからJenkinsを起動する場合。
alias jenkins="java -jar ~/jenkins/jenkins.war"

#jenkins
export JENKINS_HOME=$HOME/jenkins
#export JENKINS_HOME=$HOME
#export JENKINS_HOME=$HOME/.jenkins

#デフォルトのホーム
#export JENKINS_HOME=/var/lib/jenkins


#######################################################################

# ubuntu インストール Pythonプロフェッショナルプログラミング
# sudo apt-get install openjdk-6-jre-headless
# wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

# sudo vi /etc/apt/sources.list
# 	deb http://pkg.jenkins-ci.org/debian binary/

# sudo apt-get update
# sudo apt-get install jenkins

###############
# インストール後下記URLにアクセス。
# http://localhost:8080/

#######################################################################
#######################################################################
#######################################################################

#gdと入力すると３つまで直前のディレクトリに戻れる。
#gdと入力すると３つまで直前のディレクトリに戻れる。
#gdと入力すると３つまで直前のディレクトリに戻れる。
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'



#######################################################################
#######################################################################
#######################################################################

#グローバルエイリアス
#通常、エイリアスはコマンドラインの第1要素だけを対象にしか展開できません。
#グローバルエイリアスはコマンドラインの任意の場所で展開できます。

#alias -g グローバルエイリアスオプション



alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g GI='| grep -i'
#alias -g lM='| more '

#現在のディレクトリ以下のファイル内テキスト検索
#find . -name \*.rb -print | xargs grep "strip_tags"


#常に付けておきたいオプションをあらかじめ指定しておく
export GREP_OPTIONS="--color=auto"



#######################################################################
#######################################################################
#######################################################################

#mac用
#alias   emacs="open -a Emacs"
#alias firefox="open -a Firefox"
#alias  safari="open -a Safari"
#alias    prev="open -a Preview"

# 使用例
# firefox *.html
# safari *.html

# あるディレクトリの画像ファイルをまとめてPreviewで見たり
# prev *.jpg

# emacs のバッファに、複数のファイルをまとめて開いたりもできる。
# emacs *.css

#ターミナルから現在のディレクトリをFinderで開く。
#open .

#gitコミット編集するときなどに利用
#TextMateがファイルを閉じるまで、コマンドを再会するのを待たせるために-wを加えました。
#export EDITOR='mate -w'
#閉じるときの位置を覚えてしまうため、再度開くときに１行目にキャレットを持ってくるように設定。
#export EDITOR='mate -wl1'

#textmateコマンド用
#Xcodeプロジェクトフォーマットをインストールしてある場合。
#textmateを立ち上げておく。		Xcodeタイプのプロジェクトが開く
#textmate終了しておく。		従来のタイプのプロジェクトが開く
#alias ra="open -a TextMate ."		#railsルートで実行；プロジェクトを開くalias



#######################################################################
#######################################################################
#######################################################################

#Hashnote - Vimを最強のPython IDEにする
#http://hashnote.net/2011/12/7/12/

# pythonbrew
#if [ -s "$HOME/.pythonbrew/etc/bashrc" ]; then
#    source "$HOME/.pythonbrew/etc/bashrc"
#    # exec command like virtualenvwrapper
#    alias mkvirtualenv="pythonbrew venv create"
#    alias rmvirtualenv="pythonbrew venv delete"
#    alias workon="pythonbrew venv use"
#fi



#virtualenv, virtualenvwrapper, pip を使う方法 - Ian Lewis
#http://www.ianlewis.org/jp/virtualenv-pip-fabric

export WORKON_HOME=$HOME/.virtualenvs
source `which virtualenvwrapper.sh`




#ipython と virtualenv を同時に使う方法 - Ian Lewis
#http://www.ianlewis.org/jp/ipython-virtualenv

PIP_DOWNLOAD_CACHE=~/.pip_cache




#######################################################################


#自然言語処理用の設定
#python
#export PYTHONSTARTUP=$HOME/.pythonrc.py

#alias python="python26"
#alias     py="python26"


#######################################################################
#######################################################################
#######################################################################

#pip 仮想環境
#pythonプロフェッショナルプログラミング p6
#DISTRIBUTEを明示的に利用する。
export VIRTUALENV_USE_DISTRIBUTE=true  

# 仮想環境に入る。
#  source env/bin/activate
# 仮想環境にインストールされているパッケージの確認
#  pip freeze
# 仮想環境から抜ける。
#  deactivate



# virtualenvwrapper
# if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
# 		export WORKON_HOME=$HOME/.virtualenvs
# 		source /usr/local/bin/virtualenvwrapper.sh
# fi

# 
# 
# 
# 
# 

#######################################################################
#######################################################################
#######################################################################

#Rsense
#export RSENSE_HOME=$HOME/lib/rsense-0.3
#export RSENSE_HOME=/home/hi/.vim/bundle/rsense



#######################################################################
#######################################################################
#######################################################################

#auto-fu.zshの自動補完が便利すぎる - Glide Note - グライドノート
#  http://blog.glidenote.com/blog/2012/04/07/auto-fu.zsh/

#=============================
# source auto-fu.zsh
#=============================
if [ -f ~/.zsh/auto-fu.zsh ]; then
    source ~/.zsh/auto-fu.zsh
    function zle-line-init () {
        auto-fu-init
    }
    zle -N zle-line-init
    zstyle ':completion:*' completer _oldlist _complete
fi

#キャンセル スペース

#######################################################################

#auto-fu.zshを使う+キャンセルできるようにする - 貳佰伍拾陸夜日記
#  http://d.hatena.ne.jp/tarao/20100531/1275322620

# completion
setopt   auto_list auto_param_slash list_packed rec_exact
unsetopt list_beep
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors 'di=1;34'
zstyle ':completion:*' format '%F{white}%d%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' remote-access false
zstyle ':completion:*' completer _oldlist _complete _match _ignored \
    _list _history
zstyle ':completion:sudo:*' environ PATH="$SUDO_PATH:$PATH"
autoload -U compinit
compinit

# incremental completion
if is-at-least 4.3.10; then
    function () { # precompile
        local A
        A=~/.zsh/auto-fu.zsh
        [[ -e "${A:r}.zwc" ]] && [[ "$A" -ot "${A:r}.zwc" ]] ||
        zsh -c "source $A; auto-fu-zcompile $A ${A:h}" >/dev/null 2>&1
    }
    source ~/.zsh/auto-fu; auto-fu-install

    zstyle ':auto-fu:highlight' input bold
    zstyle ':auto-fu:highlight' completion fg=white,dim
    zstyle ':auto-fu:highlight' completion/one fg=blue,dim
    zstyle ':auto-fu:var' postdisplay ''
    zstyle ':auto-fu:var' track-keymap-skip opp

    function zle-line-init () { auto-fu-init }; zle -N zle-line-init
    zle -N zle-keymap-select auto-fu-zle-keymap-select

    function afu+cancel () {
        afu-clearing-maybe
        ((afu_in_p == 1)) && { afu_in_p=0; BUFFER="$buffer_cur"; }
    }
    zle -N afu+cancel
    function bindkey-advice-before () {
        local key="$1"
        local advice="$2"
        local widget="$3"
        [[ -z "$widget" ]] && {
            local -a bind
            bind=(`bindkey -M main "$key"`)
            widget=$bind[2]
        }
        local fun="$advice"
        if [[ "$widget" != "undefined-key" ]]; then
            local code=${"$(<=(cat <<"EOT"
                function $advice-$widget () {
                    zle $advice
                    zle $widget
                }
                fun="$advice-$widget"
EOT
            ))"}
            eval "${${${code//\$widget/$widget}//\$key/$key}//\$advice/$advice}"
        fi
        zle -N "$fun"
        bindkey -M afu "$key" "$fun"
    }
    bindkey-advice-before "^G" afu+cancel
    bindkey-advice-before "^[" afu+cancel
    bindkey-advice-before "^J" afu+cancel afu+accept-line

    # delete unambiguous prefix when accepting line
    function afu+delete-unambiguous-prefix () {
        afu-clearing-maybe
        local buf; buf="$BUFFER"
        local bufc; bufc="$buffer_cur"
        [[ -z "$cursor_new" ]] && cursor_new=-1
        [[ "$buf[$cursor_new]" == ' ' ]] && return
        [[ "$buf[$cursor_new]" == '/' ]] && return
        ((afu_in_p == 1)) && [[ "$buf" != "$bufc" ]] && {
            # there are more than one completion candidates
            zle afu+complete-word
            [[ "$buf" == "$BUFFER" ]] && {
                # the completion suffix was an unambiguous prefix
                afu_in_p=0; buf="$bufc"
            }
            BUFFER="$buf"
            buffer_cur="$bufc"
        }
    }
    zle -N afu+delete-unambiguous-prefix
    function afu-ad-delete-unambiguous-prefix () {
        local afufun="$1"
        local code; code=$functions[$afufun]
        eval "function $afufun () { zle afu+delete-unambiguous-prefix; $code }"
    }
    afu-ad-delete-unambiguous-prefix afu+accept-line
    afu-ad-delete-unambiguous-prefix afu+accept-line-and-down-history
    afu-ad-delete-unambiguous-prefix afu+accept-and-hold
fi



#######################################################################
#######################################################################
#######################################################################

#Rubyの設定

#おすすめzsh設定 - ククログ(2011-09-05)
#http://www.clear-code.com/blog/2011/9/5.html

## ライブラリのロードパス
### -x: export RUBYLIBも一緒に行う。
### -T: RUBYLIBとruby_pathを連動する。
typeset -xT RUBYLIB ruby_path
### 重複したパスを登録しない。
typeset -U ruby_path
### パスを設定
ruby_path=(# カレントディレクトリのライブラリを優先する
           ./lib)



#######################################################################

#Pythonの設定

## ライブラリのロードパス
### -x: export PYTHONPATHも一緒に行う。
### -T: PYTHONPATHとpython_pathを連動する。
typeset -xT PYTHONPATH pyhon_path
### 重複したパスを登録しない。
typeset -U python_path
### パスを設定。
python_path=(# カレントディレクトリのライブラリを優先する
             ./lib)



#######################################################################
#######################################################################
#######################################################################

#Haskell
alias ha='ghci'
alias hh='ghci'

#vimでghc-modを使うためにパスを追加。
export PATH=~/.cabal/bin:$PATH



#######################################################################







#######################################################################
#######################################################################
#######################################################################

#config/.zshrc at master · banyan/config
#  https://github.com/banyan/config/blob/master/.zshrc

# grep や ack で絞り込んだ結果を vim で開く
# http://subtech.g.hatena.ne.jp/secondlife/20100819/1282200855
alias -g V="| vim -"




#######################################################################







#######################################################################







#######################################################################







#######################################################################







#######################################################################




#END

#RVM用
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


#######################################################################
#######################################################################
#######################################################################

#alias     =' '
#alias     =' '
#alias     =' '
#alias     =' '
alias    cd6='~/Downloads/ruby1.9sample/'
alias    cd5='~/Workspace/rs'
alias    cd4='~/Workspace'
alias    cd3='~/Workspace/Rspec'
alias    cd2='~/Workspace/ruby'

# alias    ccd='cd ~/bootstrap'
# alias    ccd='cd ~/py'
# alias    ccd='cd ~/MetaRuby'
# alias    ccd='cd ~/Rails/blog'



alias    ccd='cd ~/Haskell'
ccd


