# データベース設計

## users テーブル

| Column             | Type   | Options                      |
| ------------------ | ------ | ---------------------------- |
| nickname           | string | nill: false                  |
| email              | string | nill: false,uniqueness: true |
| encrypted_password | string | nill: false                  |
| last_name          | string | nill: false                  |
| first_name         | string | nill: false                  |
| last_name_kana     | string | nill: false                  |
| first_name_kana    | string | nill: false                  |
| birth_date         | date   | nill: false                  |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | nill: false                    |
| info                   | text       | nill: false                    |
| category_id            | string     | nill: false                    |
| sales_status_id        | string     | nill: false                    |
| shipping_fee_status_id | string     | nill: false                    |
| prefecture_id          | string     | nill: false                    |
| scheduled-delivery_id  | integer    | nill: false                    |
| price                  | integer    | nill: false                    |
| user                   | references | nill: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :order
- has_one_attached :item_image

## orders テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| item    | references | nill: false, foreign_key: true |
| user    | references | nill: false, foreign_key: true |
| address | references | nill: false, foreign_key: true |

### Association

- has_many :items
- belongs_to :user
- belongs_to :address

## addresses テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| postal_code_id | string | nill: false |
| prefecture_id  | string | nill: false |
| city           | string | nill: false |
| addresses      | string | nill: false |
| building       | string |             |
| phone_number   | string | nill: false |

### Association

- belongs_to :order
