# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association
has_one  : profiles




## profiles テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| age                | string | null: false |
| gender             | string | null: false |
| height             | string | null: false |
| weight             | string | null: false |
| medical_history    | string | null: false |
| birthday           | string | null: false |
| created_at         | string | null: false |
| updated_at         | string | null: false |
| user_id            | string | null: false,foreign_key: true|
| vital_signs_id     | string | null: false,foreign_key: true|
| memo_id            | string | null: false,foreign_key: true|
| schedule_id        | string | null: false,foreign_key: true|

### Association
belongs_to : users
has_many   : vital_signs
has_many   : memo
has_many   : schedule




## vital_signs テーブル

| Column                 | Type   | Options     |
| ------------------     | ------ | ----------- |
| body_temperature(体温) | string | null: false |
| blood_pressure(血圧)   | string | null: false |
| pulse(脈拍)            | string | null: false |
| breathing(呼吸)        | string | null: false |
| measured_at           | string | null: false |
| profile_id            | string | null: false,foreign_key: true |

### Association
belongs_to : profiles



## schedules テーブル

| Column            | Type   | Options     |
| ------------------| ------ | ----------- |
| calendar          | string | null: false |
| comment           | string | null: false |
| created_at        | string | null: false |
| updated_at        | string | null: false |
| profile_id        | string | null: false,foreign_key: true |


### Association
belongs_to : profiles



## memos テーブル

| Column            | Type   | Options     |
| ------------------| ------ | ----------- |
| content           | string | null: false |
| created_at        | string | null: false |
| updated_at        | string | null: false |
| profile_id        | string | null: false,foreign_key: true |


### Association
belongs_to : profiles

