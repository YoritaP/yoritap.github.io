---
layout: post
title:  "Jekyll使ったgithub pages"
date:   2018-03-10 16:40:00 +0900
categories: jekyll
---
[Jekyll][Jekyll]とは、静的サイト生成のための[RubyGems][RubyGems]で配布されているツールです。

<br>
### Jekyllの利点
github pagesを使うことによってサーバーを用意する必要がないです。  
私はサーバーとか分からないので助かります（他のブログサービス使えよって感じですが）  

<br>
### githubでリポジトリを作成
リポジトリの名前は`githubID.github.io`という名前にします。  
これが生成されるサイトのURLとなるのですが、IDの大文字は小文字となります。  
私の場合IDが`YoritaXP`なので、`yoritaxp.github.io`となります。
![img-01][img-01]

このまま`Create repository`をし、  
{% highlight bash %}
$ git clone git@github.com:YoritaXP/yoritap.github.io.git  
{% endhighlight %}
でcloneしてください。  

2段階認証関連のエラーはここを参考にしました。  
- [GithubのDeploy Keysを登録してパスワードなしでアクセスする][lnk-01]

<br>
### github-pagesをインストール

前提としてrubyの環境が整ってるものとします。
ない場合は以下のサイトを参考にしてみてください。
- [WindowsにRubyをインストールする(初心者向け)][lnk-02]

github pagesで必要なツールをインストールします。  
{% highlight bash %}
$ gem install jekyll
$ gem install bundler
{% endhighlight %}

<br>
### Jekyllプロジェクトの生成

フォルダ内にファイルが存在すると上手くいかないみたいなので、  
別フォルダにJekyllプロジェクトを生成し、ローカルリポジトリに移します。  
{% highlight bash %}
$ jekyll new jekyll-test
{% endhighlight %}
これで`jekyll-test`フォルダ内に必要ファイルが生成されたはずです。  
これを`YoritaXP.github.io`内に移します。  

<br>
### Webサイトをローカルで確認

{% highlight bash %}
$ cd YoritaXP.github.io
$ bundle exec jekyll serve
{% endhighlight %}
Webブラウザで[http://localhost:4000](http://localhost:4000)にアクセスすると、生成されたページを閲覧することができます。  

[Jekyll]: https://jekyllrb.com/
[RubyGems]: https://rubygems.org/
[lnk-01]: https://qiita.com/master-of-sugar/items/a9892879f6e9cb9f3c97
[lnk-02]: https://qiita.com/shimoju/items/41035b213ad0ac3a979e


[img-01]: {{site.baseurl}}/images/2018/03/github-pages-new-repository.png