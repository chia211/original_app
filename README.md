# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association
has_one  : profile




## profiles テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| age                | integer | null: false |
| gender             | string | null: false |
| height             | integer | null: false |
| weight             | integer | null: false |
| medical_history    | text | null: false |
| birthday           | date   | null: false |
| user_id            | t.references | null: false,foreign_key: true|

### Association
belongs_to : user
has_many   : vital_signs
has_many   : memos
has_many   : schedules




## vital_signs テーブル

| Column                 | Type   | Options     |
| ------------------     | ------ | ----------- |
| body_temperature(体温) | float |
| blood_pressure_systolic（血圧・上）  | string | 
| blood_pressure＿diastolic　(血圧・下)   | string | 
| pulse(脈拍)            | integer | 
| breathing(呼吸)        | integer | 
| note                  | text     | 
| measured_at           | datetime | null: false |
| profile_id            | t.references | null: false,foreign_key: true |

### Association
belongs_to : profile



## schedules テーブル

| Column            | Type   | Options     |
| ------------------| ------ | ----------- |
| title             | string | null: false |
| comment           | text | 
| date              | date | null: false |
| profile_id        | t.references | null: false,foreign_key: true |


### Association
belongs_to : profile



## memos テーブル

| Column            | Type   | Options     |
| ------------------| ------ | ----------- |
| title             | string | null: false |
| content           | text   | null: false |
| profile_id        | t.references | null: false,foreign_key: true |


### Association
belongs_to : profile

