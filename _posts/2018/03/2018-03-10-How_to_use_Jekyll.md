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
私の場合IDが`YoritaXP`なので、`YoritaXP.github.io`となります。
![img-01][img-01]

このまま`Create repository`をし、  
{% highlight bash %}
$ git clone https://github.com/YoritaXP/YoritaXP.github.io.git  
{% endhighlight %}
でcloneしてください。  

<br>
### github-pagesをインストール

前提としてrubyの環境が整ってるものとします。
ない場合は以下のサイトを参考にしてみてください。
- [WindowsにRubyをインストールする(初心者向け)][lnk-01]

github pagesで必要なツールをインストールします。  
{% highlight bash %}
$ gem install github-pages -v 102
$ github-pages -v
github-pages 102
$ github-pages versions
+---------------------------+---------+
| Gem                       | Version |
+---------------------------+---------+
| jekyll                    | 3.3.0   |
| jekyll-sass-converter     | 1.3.0   |
| kramdown                  | 1.11.1  |
| liquid                    | 3.0.6   |
| rouge                     | 1.11.1  |
| github-pages-health-check | 1.2.0   |
| jemoji                    | 0.7.0   |
| jekyll-mentions           | 1.2.0   |
| jekyll-redirect-from      | 0.11.0  |
| jekyll-sitemap            | 0.11.0  |
| jekyll-feed               | 0.7.2   |
| jekyll-gist               | 1.4.0   |
| jekyll-paginate           | 1.1.0   |
| jekyll-coffeescript       | 1.0.1   |
| jekyll-seo-tag            | 2.0.0   |
| jekyll-github-metadata    | 2.2.0   |
| listen                    | 3.0.6   |
| activesupport             | 4.2.7   |
| minima                    | 2.0.0   |
| jekyll-swiss              | 0.4.0   |
+---------------------------+---------+
{% endhighlight %}

<br>
### Jekyllプロジェクトの生成

フォルダ内にファイルが存在すると上手くいかないみたいなので、  
別フォルダにJekyllプロジェクトを生成し、ローカルリポジトリに移します。  
{% highlight bash %}
$ jekyll -v
jekyll 3.3.0
$ jekyll new jekyll-test
{% endhighlight %}
これで`jekyll-test`フォルダ内に必要ファイルが生成されたはずです。  
これを`YoritaXP.github.io`内に移します。  

<br>
### Webサイトをローカルで確認

{% highlight bash %}
$ cd YoritaXP.github.io
$ jekyll serve
{% endhighlight %}
Webブラウザで[http://localhost:4000](http://localhost:4000)にアクセスすると、生成されたページを閲覧することができます。  

[Jekyll]: https://jekyllrb.com/
[RubyGems]: https://rubygems.org/
[lnk-01]: https://qiita.com/shimoju/items/41035b213ad0ac3a979e


[img-01]: {{site.baseurl}}/images/2018/03/github-pages-new-repository.png