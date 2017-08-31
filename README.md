# JNetHack 3.6.0 on Docker

## これは何

Docker の練習がてら、JNetHack 3.6.0 をコンテナ化しました。
alpine linux ベース、不要パッケージ、
ファイルはほぼ削除したのでコンテナサイズは小さいです。

tty と X11 対応でコンパイルしています
（が、X11 はテストしていません）

## 使い方

tty 出力は UTF-8 です。  
ハイスコア、log、セーブファイルは `/nethack/data`
に書き出すように作ってあります。
一般的には以下のように実行すれば良いでしょう。

``` sh
docker run --rm -it -u $uid -v `pwd`:/nethack/data amura/jnethack
```

OPTION を変更したかったら、 `-e NETHACKOPTIONS=hoge` で変更出来ます。

## 謝辞

tty の UTF-8 対応は以下のサイトのパッチを参考にしました。

* [jnethack UTF-8対応 其ノ三](http://elbereth.seesaa.net/article/242387348.html)
