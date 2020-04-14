# アプリケーション情報
## アプリケーション概要
* イベントやポップアップストアなどをしている団体のホームページを作成しました。
* 接続先情報
* https://tabatashoten.herokuapp.com/

## 開発状況
# 開発環境
* Ruby/Ruby on Rails/MySQL/Github/Heroku/Visual Studio Code
## 開発期間と平均作業時間
* 開発期間：約1週間
* 1日あたりの平均作業時間：約9時間
# 開発体制
## 開発体制
* 人数：1名
* アジャイル型開発（スクラム）


# DB

## usersテーブル
|Columm|Type|Options|
|:------|:----|:-------|
|nickname|string|null: :false|
|e-mail|string|null: ：false|
|number|string|null: :false|
|encrypted_password|string|null: :false|
|password_confirmation|string|null: :false|
|admin|boolean||


### index
add_index: [:nickname, :e-mail, :admin]

### アソシエーション
has_many :abouts
has_many :blogs
has_many :events
has_many :items


## aboutsテーブル
|Columm|Type|Options|
|:------|:----|:-------|
|content|text|null: :false|
|user_id|integer|null: ：false|


### index
add_index: :user_id

### アソシエーション
belongs_to :user



## blogsテーブル
|Columm|Type|Options|
|:------|:----|:-------|
|title|string|null: :false|
|content|text|null: :false|
|googlemap|text|null: :false|
|address|text|null: :false|
|instagram|text|null: :false|
|user_id|integer|null: ：false|

### index
add_index: [:user_id :title]

### アソシエーション
belongs_to :user



## eventsテーブル
|Columm|Type|Options|
|:------|:----|:-------|
|title|string|null: :false|
|content|text|null: :false|
|googlemap|text|null: :false|
|address|text|null: :false|
|instagram|text|null: :false|
|user_id|integer|null: ：false|

### index
add_index: [:user_id :title]

### アソシエーション
belongs_to :user



## itemsテーブル
|Columm|Type|Options|
|:------|:----|:-------|
|title|string|null: :false|
|instagram|text|null: :false|
|user_id|integer|null: ：false|

### index
add_index: [:user_id :title]

### アソシエーション
belongs_to :user