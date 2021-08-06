# テーブル設計

# usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| affiliation        | date   | null: false |

### Association
- has_many :manual
- has_many :qa

# manualテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| manual_name            | string     | null: false                    |
| fail                   | text       | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :qa

# qaテーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| question   | text       | null: false                    |
| answer     | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
| manual     | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :manual

# ローカルでの動作方法
- 作成予定