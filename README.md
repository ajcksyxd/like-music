# アプリケーション名

Like Music  
<br/>

# アプリケーション概要

音楽を投稿して視聴することができます。  
音楽の投稿に対してコメントをすることができます。  
ユーザーの投稿した音楽を閲覧することができます。  
<br/>

# URL

https://like-music.herokuapp.com/  
<br/>

# テスト用アカウント

### アカウント１  
test@test.com  
111aaa  

### アカウント2  
test2@test.com  
111aaa  
<br/>

# Basic認証  
ID:tkbp  
pass:5675  
<br/>

# 利用方法

トップページ上部のログインボタンを押してテスト用アカウントでログインしてください。  
トップページに表示されている画像をクリックしてください。  
遷移したページにプレイヤーがありますので再生ボタンを押すと音楽が視聴できます。  
音量ボタンにカーソルを合わせると音量の調整ができます。  
New Musicボタンから好きな音楽を投稿することもできます。  
確認後、ログアウト処理をお願いします。  
<br/>

# 目指した課題解決

『自作の音楽や演奏した音楽を誰かに聴いてもらいたいけどそこまで自信がない』  
『自分と同じ様な音楽が好きな人とコミュニケーションをとりたい』  
上記のような考えを持つ人の課題解決を目指しました。  
<br/>

# 洗い出した要件

ユーザー管理機能  
音楽投稿機能  
音楽一覧表示機能  
音楽詳細表示機能  
音楽情報編集機能  
音楽削除機能  
コメント投稿機能  
ユーザー詳細表示機能  
<br/>

# 実装予定の機能

カテゴリー検索機能  
コメント投稿のリアルタイムチャット機能  
オリジナル再生プレイヤー作成  
<br/>

# ローカルでの動作方法

$ git clone https://github.com/ajcksyxd/like-music.git  
$ cd like-music  
$ bundle install  
$ rails db:create  
$ rails db:migrate  
$ rails s  
👉 http://localhost:3000  
<br/>
Ruby '2.6.5'  
Ruby on Rails '6.0.0'  
MySQL2 '0.5.3'  
