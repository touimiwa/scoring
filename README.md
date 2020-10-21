### アプリケーション名

# footscoring

## アプリケーション概要
「サッカーの試合採点共有サイト」です。私はサッカーのニュースを見ることや試合観戦がとても好きです。その際、ニュースで媒体がサッカー選手や試合に採点しているのを見てユーザー同士が試合に採点し共有するのはどうかと考え、このアプリを作成しました。

## 公開先URL: https://scoring-29714.herokuapp.com/

## テスト用アカウント
### 管理者アカウント
ID：test＠test
パスワード:test1234
### 管理者以外アカウント
id:kkk@gmail.com
パスワード：toy10078

## 利用方法
実際に観戦した試合やテレビなどで観た試合をタッチし、⭐️１〜５で採点し、好きにコメントしていこう。

## 目指した課題解決
Footscoringを通じて、サッカー好きが試合を見てどう思ったのかを共有する場所を
作りたいと思いました。

## 機能一覧
- ユーザー登録機能
- 試合結果投稿機能
- レビュー機能
- 管理者権限

## 管理者権限
- 管理者側（試合投稿のボタンが表示される）
<img src= "1soccer.jpg" wibth='370' height='300'>
- 管理者以外（ボタン表示なし）
<img src= "8ae7ada7ccafe70df70609bcd6e7c758.gif" wibth='100' height='300'>

## レビュー機能
- マウスをかざすだけで⭐️に色を変えるようにしました
<img src= "dd7f3a2262f8399e2b1451886f5c3558.gif" wibth='100' height='300'>

## 今後実装予定の機能
- 選手レビュー機能（現在試合に対してのみ）
- ユーザー同士でのチャット機能（試合結果に対して話し合う場を作りたい）

# ER図
<img src= "bef695ff7677a405b10c64b089714add.png" wibth='100' height='300'>




# テーブル設計

## users テーブル

| Column                | Type     | Options     |
| --------------------- | -------- | ----------- |
| nickname              | string   | null: false |
| email                 | string   | null: false |
| encrypted_password    | string   | null: false |


### Association

- has_many :foots
- has_many :reviews


## foots テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| ateam          | string     | null: false                    |
| ascore_id      | integer    | null: false                    |
| bteam          | string     | null: false                    |
| bscore_id      | integer    | null: false                    |
| one_member     | string     | null: false                    |
| two_member     | string     | null: false                    |
| three_member   | string     | null: false                    |
| four_member    | string     | null: false                    |
| five_member    | string     | null: false                    |
| six_member     | string     | null: false                    |
| seven_member   | string     | null: false                    |
| eight_member   | string     | null: false                    |
| nine_member    | string     | null: false                    |
| ten_member     | string     | null: false                    |
| eleven_member  | string     | null: false                    |
| aone_member    | string     | null: false                    |
| atwo_member    | string     | null: false                    |
| athree_member  | string     | null: false                    |
| afour_member   | string     | null: false                    |
| afive_member   | string     | null: false                    |
| asix_member    | string     | null: false                    |
| aseven_member  | string     | null: false                    |
| aeight_member  | string     | null: false                    |
| anine_member   | string     | null: false                    |
| aten_member    | string     | null: false                    |
| aeleven_member | string     | null: false                    |
| user           | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :reviews


## reviews テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| content        | string     |                                |
| score          | integer    |                                |
| foot           | references | null: false, foreign_key: true |
| user           | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :foot
