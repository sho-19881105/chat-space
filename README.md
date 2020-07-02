# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, index: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|groups_id|integer|null:false, foreign_key: true|

### Association
- has_many :messages
- has_many :groups, through: groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image_name|string||
|created_at|timestamp|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|stirng|null: false|
|user_id|integer|null: false,foreign_key: true|

### Association
- has_many :users, through: groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


