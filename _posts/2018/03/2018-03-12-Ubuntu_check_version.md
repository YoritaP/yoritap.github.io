---
layout: post
title:  "UbuntuでOSのバージョンを確認する"
date:   2018-03-12 23:30:00 +0900
categories: Ubuntu
---

### OSバージョンの確認方法1

{% highlight bash %}
$ cat /etc/os-release

NAME="Ubuntu"
VERSION="16.04.4 LTS (Xenial Xerus)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 16.04.4 LTS"
VERSION_ID="16.04"
HOME_URL="http://www.ubuntu.com/"
SUPPORT_URL="http://help.ubuntu.com/"
BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"
VERSION_CODENAME=xenial
UBUNTU_CODENAME=xenial
{% endhighlight %}

### OSバージョンの確認方法2

{% highlight bash %}
$ cat /etc/issue

Ubuntu 16.04.4 LTS \n \l
{% endhighlight %}

### OSバージョンの確認方法3（lsb-releaseが必要）

{% highlight bash %}
$ cat /etc/lsb-release

DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04.4 LTS"
{% endhighlight %}
