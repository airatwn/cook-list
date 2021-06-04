# README

# アプリケーション名
Cook Lists

#概要
料理専門の画像投稿のアプリケーションを作成しました。ユーザーを登録すると投稿できるようになります。自身が投稿したページは、編集と削除をすることができます。

#制作背景(意図)
SNSは様々なジャンルが閲覧することができますが、興味のないジャンルまで閲覧してしまうことがあるので、自身が興味あるものだけに特化したアプリケーションを作成した。

#DEMO
トップページ
[![Image from Gyazo](https://i.gyazo.com/2c70b71dcade833d88a40f7e6124bbb3.gif)](https://gyazo.com/2c70b71dcade833d88a40f7e6124bbb3)

新規投稿画面
[![Image from Gyazo](https://i.gyazo.com/0b446b836bcfe0e3de44d00b0ee00e36.gif)](https://gyazo.com/0b446b836bcfe0e3de44d00b0ee00e36)

#実装予定の内容
ユーザー情報
メモ機能

# テーブル設計

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |

### Association

- has_many :photos

# photosテーブル

| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| title    | string     | null: false |
| text     | text       | null: false |
| date     | date       | null: false |
| user     | references | null: false |

### Association

- belongs_to user

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

