emacs configure file
===
以下介绍了目前我的emacs的配置情况及待完善的地方。

markdown  
---
- 安装markdown，在ubuntu下，执行如下命令
```c
sudo aptitude install markdown
```

w3m
---
emacs可通过w3m浏览网页，其安装步骤如下：  
1. 从[w3c Download](http://emacs-w3m.namazu.org/index-en.html#download)下载`emacs-w3m`。
2. 确保安装了`autoconf`，在`emacs-w3m`的解压目录下执行`autoconf`，生成configure文件。
3. 执行`./configure; make; sudo make install`安装w3m
4. 配置emacs.el。
5. 打开emacs,在`w3m`模式下即可上网。

待完成
---
- 自动补全，参考[company-mode](https://github.com/company-mode/company-mode)
- 邮件，(mew)
- 目录结构，参考![目标图](http://dl2.iteye.com/upload/attachment/0054/7917/7431fe27-9246-3ff0-aff9-99f1a095aa16.png)
- 代码跳转
- ...



