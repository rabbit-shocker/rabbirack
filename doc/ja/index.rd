---
layout: ja
title: rabbirack
---
== rabbirackとは

rabbirackはWebブラウザーからRabbitを操作するためのツールです。

次のスライドを表示するにはキーボードまたはマウスで操作しなければいけま
せん。すると、発表中はずっとパソコンの前に立っていなければいけません。
rabbirackを使うとWebブラウザーでRabbitを操作できるので、スマートフォン
からもRabbitを操作できるようになります。そうすると、もうパソコンの前に
いる必要はありません。舞台の中央で発表することができます。

多くの発表会場では舞台の隅の方が発表者の位置です。発表中で大事なことを
伝えたい時は身振り手振りもつけて強調したいものです。しかし、隅のほうで
いくら身振り手振りを大きくしても観客にはなかなか気付いてもらえません。
しかし、舞台の中央であれば観客も気付いてくれます。パソコンの前を離れて
観客に大事なことを伝えましょう。

== インストール

RubyGemsでインストールできます。関連パッケージも一緒にインストールされ
ます。

  % gem install rabbirack

== 使い方

((%rabbirack%))コマンドを実行するとWebサーバーとして起動します。

  % rabbirack
  >> Thin web server (v1.3.1 codename Triple Espresso)
  >> Maximum connections set to 1024
  >> Listening on 0.0.0.0:9292, CTRL+C to stop

これでWebサーバーが起動しました。((%Ctrl+c%))（Controlキーを押しながら
cを押す）まで起動しているので、発表が終わるまではこのままにしておきます。

Rabbitとrabbirackはどちらを先に起動しても大丈夫です。以下のように
Rabbitを起動します。

  % rabbit https://raw.github.com/shockers/rabbit/master/sample/theme-bench.rab

Rabbitとrabbirackの両方を起動したらWebブラウザーで
((<http://127.0.0.1:9292/>))へアクセスします。アクセスするとRabbitを操
作するためのリンクがあります。これでRabbitを操作します。

スライドを移動できましたか？
それでは発表の準備をしっかりして発表に備えてください。

== より詳しい使い方

通常はここまで説明した使い方で十分ですが、それでは足りないこともありま
す。そのようなときのためにより詳しい使い方を説明します。

=== 違うホストで起動しているRabbitにコメントを送る

TODO

=== もっと知りたい

((%--help%))オプションを指定すると使えるオプションがすべて表示されます。
自分が使いたい機能がないか調べてみてください。

  % rabbirack --help

== 作者

  * Kouhei Sutou <kou@cozmixng.org>

== 著作権

著作権はそれぞれのコードを書いた人が持っています。つまり、コミットされ
たコードの著作権はそのコミッタが持っていて、パッチのコードの著作権はそ
のパッチ作者が持っています。

== ライセンス

GPLv2 or laterです。詳しくはGPLファイルを見てください。取り込まれたパッ
チやコードなどを提供してもらった場合、それらのライセンスがGPLv2 or
laterとすることに同意してもらったこととします。また、それらも含めて須藤
がライセンスを変更できる権利を持つことに同意してもらったこととします。

== メーリングリスト

((<Rabbitのユーザーページ
|URL:http://rabbit-shockers.org/ja/users.html>))を参照してください。

== 開発への参加方法

=== リポジトリ

rabbirackのリポジトリは((<GitHub|URL:https://github.com/shockers/rabbirack/>))にあります。

((<Rabbitの開発ページユーザーページ
|URL:http://rabbit-shockers.org/ja/users.html>))を参照してください。

=== コミットメール

以下のメーリングリストにコミットメール毎に変更点が流れます。メーリング
リストに参加することで開発状況を確認できます。メーリングリストに参加す
るには以下のようなメールを送信してください。

  To: rabbit-commit@ml.cozmixng.org
  Cc: null@cozmixng.org
  Subject: 登録

  登録

=== バグの報告方法

ご意見ご要望不具合報告等は作者へのメール、メーリングリスト（メーリング
リストについては((<Rabbitのユーザーページ
|URL:http://rabbit-shockers.org/ja/users.html>))を参照してください）、
((<GitHubのIssues|URL:https://github.com/shockers/rabbirack/issues>))を
ご利用ください。

== 感謝

以下の方々はrabbirackを助けてくれたみなさんです。ありがとうございま
す！！！

  * ...

