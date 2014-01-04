emacs
=====

emacs configure file

1. markdown格式说明：
要生成支持markdown格式的文本，需先安装markdown。在ubuntu下，执行命令`sudo aptitude install markdown`即可。

2. w3m
emacs可通过w3m浏览网页。其安装步骤如下
    a. 如果想通过cvs安装emacs-w3m，需先安装cvs，安装后执行
cvs -d :pserver:anonymous@cvs.namazu.org:/storage/cvsroot co w3m
       即可。
       亦可从官网下载emacs-w3m解压安装。
    b. 确保安装了autoconf。在终端输入autoconf，生成configure文件
    c. 执行./configure
    d. 执行make; sudo make install
    e. 配置emacs.el
    f. 打开emcas，输入M+x w3m即可。



