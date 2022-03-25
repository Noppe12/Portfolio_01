# README

# クリエイター用画像投稿サイト

## サイト概要
クリエイターが画像を簡単に投稿し、閲覧を管理できるサイト

### サイトテーマ
クリエイター用の登録制サイト

### テーマを選んだ理由
最終目標はyoutubeのメンバー機能のような個人クリエイター用管理サイトの作成だが、
現在の技術を鑑みて、「管理者」「クリエイター」「メンバー」の3つの権限に分けた画像投稿サイト

### ターゲットユーザ
ツイッターやyoutube、pixivなどで投稿しているクリエイター向け

### 主な利用シーン
クリエイターが自分の作品をツイッターなどのSNSよりも限定的な人に見せたい場合に使用するサイト


## 設計書
ER図<https://docs.google.com/spreadsheets/d/1W9VweLvwCbJIV4Pq1OK6eS358m533xcUNBcieFGyrHs/edit?usp=sharing>
データベース設計書<https://docs.google.com/spreadsheets/d/1rrX0MfRsnk_QPHA89kNiNqVeFm57F9If7Hk_ZeOZBDw/edit?usp=sharing>
詳細設計書<作成中>

## 使用gem
  gem 'devise'

  gem "refile", require: "refile/rails", github: 'manfe/refile'
  gem "refile-mini_magick"

  gem 'kaminari','~> 1.2.1'

  gem 'bootstrap', '~> 4.5'
  gem 'jquery-rails'

  gem 'pry-rails'

## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1qILWtOxYoGOQPI8X_t-KiCqLgpPC_yFjSSqKz_aU4CY/edit?usp=sharing>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- 外部サービスの画像素材・音声素材を使用した場合は、必ずサービス名とURLを明記してください。
- 使用しない場合は、使用素材の項目をREADMEから削除してください。