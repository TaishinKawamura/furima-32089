# テーブル設計

## users テーブル

| Column      | Type   | Options      |
| ----------- | ------ | ------------ |
| nickname    | string | null: false  |
| email       | string | unique: true |
| password    | string | null: false  |
| family_name | string | null: false  |
| first_name  | string | null: false  |
| family_kana | string | null: false  |
| first_kana  | string | null: false  |
| birthday    | date   | null: false  |

### Association

- has_many :item
- has_many :buyer


## items テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| image       | string     | null: false                    |
| item_name   | string     | null: false                    |
| description | text       | null: false                    |
| category    | string     | null: false                    |
| condition   | string     | null: false                    |
| charge      | string     | null: false                    |
| area        | string     | null: false                    |
| days        | string     | null: false                    |
| price       | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| buyer       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :buyer

## buyers テーブル

| Column      | Type   | Options                            |
| ----------- | ---------- | ------------------------------ |
| code        | string     | null: false                    |
| prefectures | string     | null: false                    |
| city        | string     | null: false                    |
| address     | string     | null: false                    |
| build       | string     | null: false                    |
| phone       | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :item