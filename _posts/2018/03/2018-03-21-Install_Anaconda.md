---
layout: post
title:  "UbuntuにAnacondaを入れてpythonの開発環境を構築"
date:   2018-03-21 20:00:00 +0900
categories: Ubuntu
---

### WSLを用いて環境を構築します
- [Windows 10でLinuxプログラムを利用可能にするWSLをインストールする][lnk-01]
- [Ubuntuのバージョンを確認する方法][lnk-02]

### 必要なパッケージをインストール
{% highlight bash %}
$ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev libpng-dev
{% endhighlight %}

### pyenvのインストール
{% highlight bash %}
$ git clone git://github.com/yyuu/pyenv.git ~/.pyenv
$ git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash
$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
$ echo 'eval "$(pyenv init -)"' >> ~/.bashrc
$ source ~/.bashrc
{% endhighlight %}

### Anacondaのインストール
まず、Anacondaのバージョンを確認します。  
{% highlight bash %}
$ pyenv install -l | grep anaconda3
  anaconda3-2.0.0
  anaconda3-2.0.1
  anaconda3-2.1.0
  anaconda3-2.2.0
  anaconda3-2.3.0
  anaconda3-2.4.0
  anaconda3-2.4.1
  anaconda3-2.5.0
  anaconda3-4.0.0
  anaconda3-4.1.0
  anaconda3-4.1.1
  anaconda3-4.2.0
  anaconda3-4.3.0
  anaconda3-4.3.1
  anaconda3-4.4.0
  anaconda3-5.0.0
  anaconda3-5.0.1
  anaconda3-5.1.0
{% endhighlight %}

最新のAnacondaをインストールし、デフォルトとして設定します。  
{% highlight bash %}
$ pyenv install anaconda3-5.1.0
$ pyenv global anaconda3-5.1.0
$ echo 'export PATH="$PYENV_ROOT/versions/anaconda3-5.1.0/bin:$PATH"' >> ~/.bashrc
$ source ~/.bashrc
{% endhighlight %}

Pythonの環境を確認します。  
{% highlight bash %}
$ python --version
Python 3.6.4 :: Anaconda, Inc.
{% endhighlight %}

### 任意のpythonのバージョンを切り替える
py35という名前のpython3.5の環境を作ります。  
{% highlight bash %}
$ conda create -n py35 python=3.5 anaconda
{% endhighlight %}

環境が構築できたか確認します。  
{% highlight bash %}
$ conda info -e
# conda environments:
#
base                  *  /root/.pyenv/versions/anaconda3-5.1.0
py35                     /root/.pyenv/versions/anaconda3-5.1.0/envs/py35
{% endhighlight %}

下記のコマンドで環境を切り替えます。  
{% highlight bash %}
$ source activate py35
{% endhighlight %}

環境を切り替えることができたか確認します。  
{% highlight bash %}
$ conda info -e
# conda environments:
#
base                     /root/.pyenv/versions/anaconda3-5.1.0
py35                  *  /root/.pyenv/versions/anaconda3-5.1.0/envs/py35
{% endhighlight %}

環境を抜けるには下記のコマンドを打ち込むだけです。  
{% highlight bash %}
$ source deactivate
{% endhighlight %}

### pythonライブラリのインストール
{% highlight bash %}
$ conda update -y conda
$ pip install --upgrade pip
{% endhighlight %}

[lnk-01]: http://www.atmarkit.co.jp/ait/articles/1608/08/news039.html
[lnk-02]: {{site.baseurl}}/ubuntu/2018/03/12/Ubuntu_check_Version.html
