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

| Column                   | Type       | Options                        |
| ------------------------ | ---------- | ------------------------------ |
| item_name                | string     | nill: false                    |
| item_info                | text       | nill: false                    |
| item_category            | string     | nill: false                    |
| item_sales_status        | string     | nill: false                    |
| item_shipping_fee_status | string     | nill: false                    |
| item_prefecture          | string     | nill: false                    |
| item_scheduled-delivery  | integer    | nill: false                    |
| item_price               | integer    | nill: false                    |
| user                     | references | nill: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :order
- has_one_attached :item_image

## orders テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| postal_code  | integer    | nill: false                    |
| prefecture   | string     | nill: false                    |
| city         | string     | nill: false                    |
| addresses    | string     | nill: false                    |
| building     | text       |                                |
| phone_number | integer    | nill: false                    |
| item         | references | nill: false, foreign_key: true |
| user         | references | nill: false, foreign_key: true |

### Association

- has_many :items
- belongs_to :user