# README

## アプリケーション名
"game_matching30472"

## アプリケーション概要
このアプリケーションでは、人気ゲーム「Dead by Daylight」での、
チーム形成を目的としてできたチームでトーナメント大会ができることを最終目的とする。

## 利用方法
自分のプロフィールを入力して、募集を掲示して、同じ目的を持ったプレイヤーと一緒にゲームをプレイできるようにするために利用する。。

## 目指した課題解決
一人でオンラインゲームをしているが、もっと他の人とゲームがしたい人向け。
一人でゲーム配信をしているyoutuberを対象として、コンテンツの一つとして利用できるようにしたい。



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

## usersテーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| password           | string  | null: false |

### Association
- has_many :playings
- has_one :profile

## profileテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| character_killer   | string     |                                |
| character_survivor | integer    |                                |
| play_time          | integer    |                                |
| self-info          | text       |                                |
| uer                | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## playingテーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| rule     | text       | null: false                    |
| play_day | date       | null: false                    |
| user     | references | null: false, foreign_key: true |
| title    | text       | null: false,                   |

### Association
- belongs_to :user


