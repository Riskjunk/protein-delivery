# protein-delivery
https://www.protein-delivery.net

![top](https://user-images.githubusercontent.com/78645413/167354852-eb7aee3e-4fa6-4cb4-aa3d-af85a5b3bdb0.gif)

# サービス概要
筋トレやダイエット中で、高タンパク・低カロリーな宅配食を必要とする人のための  
高タンパク質の宅配食に限定したレビューサイトです。

# 実装した機能
## 検索機能
項目別による宅配食の検索が出来ます。  
「カロリー」「たんぱく質」「メニューの名称」など様々な条件で検索出来るようにしました。  
（検索にヒットした数も表示されます）

![search](https://user-images.githubusercontent.com/78645413/167361607-018ab473-131c-4cd9-87c0-f96831898f65.gif)


## 口コミ投稿機能
サービスに対する口コミを投稿出来ます。

![review](https://user-images.githubusercontent.com/78645413/167361744-e847778f-9f8b-424e-a2a2-058fc3114a5d.gif)

## ランキング機能
評判の良いサービス・メニューがランキングにより一目で分かります。

| サービスランキング | メニューランキング |
----|---- 
| サービスの星5段階評価によるランキングです。 | メニューのいいねの数によるランキングです。 |
| ![servicerank](https://user-images.githubusercontent.com/78645413/167372474-a6c5242e-eed8-4b1d-a355-0715f82f5ca7.png) | ![menurank](https://user-images.githubusercontent.com/78645413/167373625-b35191b4-a855-4a5c-b20a-5e3708b7afa1.png) |

## SNS認証によるログイン
| 未ログイン時のユーザー登録への案内　→ | → ログインページ |
----|---- 
| 未ログインでログインユーザー専用の機能を使った場合、ユーザー登録への案内を表示します。 | twitterやgoogleのSNS認証を使えば簡単にログイン出来ます。 |
| ![loginlead](https://user-images.githubusercontent.com/78645413/167379169-fe2fa6bc-54d1-4a24-8694-5b0362205c03.gif) | ![snslogin](https://user-images.githubusercontent.com/78645413/167383032-14a68723-492b-453e-abbe-0a4c2985aea7.png) |


# メインのターゲットユーザー
筋トレやダイエットをしていて、高タンパク質・低カロリーな食事を摂りたい方  
既に高タンパク質の宅配食を使っているが、他に良いサービスがあれば知りたい方


# ユーザーが抱える課題
高タンパク質の宅配食サービスは、まとめて注文する形式(単品注文が出来ない)が多く、更に値段が高い物が多いため気軽に手を出しにくい。  
一つのサービスの中に何十種類もの商品があるため、どれが美味しいか等の細かい情報が自分で購入して試さないと分からない。


# 解決方法
高タンパク質の宅配食に限定したレビューサイトを提供することで、  
宅配食を自分で購入せずとも、良いサービス・良い商品の情報を共有して手に入れることが出来る。


# なぜこのサービスを作りたいのか？
私は、身体づくりの為に筋トレに励んでおり、毎日高タンパク質な食事を摂りたいが、高タンパク質な食事の種類が少なく困っている。  
自炊をすると望ましい食事を用意出来るが、手間がかかり大変なうえに、量が多すぎて食べすぎてしまう。  
そんな問題を解決してくれる素晴らしい商品が高タンパク質の宅配食サービスである。  
しかし、一品あたりの値段が高いうえにまとめて注文する形式ばかりなため、気軽に試しにくいし、種類がたくさんありすぎるため、どの商品が良いのかすぐに分からない。
実際に食べた人達で情報共有が出来れば解決すると思い、サービスを考えた。

また、筋トレしている人向けの高タンパク質の宅配食を知った当初、こんな素晴らしい商品は早く知りたかったと感じた。筋トレしていて、食事に困っている私の様な人間は他にもいると思い、そういった方にも情報を届けたい。


# 使用技術
## バックエンド
- Ruby 3.0.2
- Rails 6.0.4.1
  - sorcery(ログイン、SNS認証)
  - seed-fu(データの入力)
  - ridgepole(DBスキーマ変更)
  - nokogiri(スクレイピング)
  - ransack(検索機能)
  - kaminari(ページネーション)
  - rubocop(コード整形)
  - carrierwave(ファイルのアップロード)
  - fog-aws(ファイルをAWS S3へアップロード)
  - meta-tags(OGP設定)
  - rails-i18n(日本語化対応、エラーメッセージのカスタマイズ)
  - data-confirm-modal(未ログイン時の確認画面等のカスタマイズ)

## フロントエンド
- SCSS (CSS)
- bootstrap 4.5.0
  - カルーセル
  - パンくずリスト
- jQuery(raty.js)

## インフラ
- AWS(S3)




# 画面遷移図
https://www.figma.com/file/UtvxbQrMSL6kih5SSaDYLG/画面遷移図?node-id=0%3A1


# ER図
![ER Diagram drawio](https://user-images.githubusercontent.com/78645413/168453403-ea200ab3-c4d9-443b-b2a2-57935c32003f.png)

https://drive.google.com/file/d/1HDyb9WGtucyzHJeaQ-hD1rNLGFQbOXsF/view?usp=sharing