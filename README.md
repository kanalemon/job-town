#テーブル設計

  ## users テーブル

  | Column             | Type    | Options     |
  | ------------------ | ------- | ------------|
  | nickname           | string  | null: false |
  | email              | string  | null: false |
  | encrypted_password | string  | null: false |
  | age                | integer | null: false |
  | gender             | string  | null: false |
  | career             | string  | null: false |

  ### Association

  - has_many : posts
  - has_many : comments

  ## posts テーブル

  | Column       | Type       | Options                        |
  | ------------ | ---------- | -------------------------------|
  | company      | string     | null: false                    |
  | department   | string     | null: false                    |
  | industry     | string     | null: false                    |
  | occupation   | string     | null: false                    |
  | description  | string     | null: false                    |
  | skill        | string     | null: false                    |
  | users        | references | null: false, foreign_key: true |

  ### Association

  - belongs_to : users
  - has_many : comments

  ## comments テーブル

  | Column | Type       | Options                        |
  | ------ | ---------- | ------------------------------ |
  | text   | string     | null: false                    |
  | user   | references | null: false, foreign_key: true |
  | post   | references | null: false, foreign_key: true |

  ### Association

  - belongs_to : users
  - belongs_to : posts