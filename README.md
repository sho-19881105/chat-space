# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :messages
- has_many :groups_usersテーブル
- has_many :groups, through: groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image_name|string||
|created_at|timestamp|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|stirng|null: false|

### Association
- has_many :groups_usersテーブル
- has_many :users, through: groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


