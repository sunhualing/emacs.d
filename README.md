# 我的Emacs配置

## 说明
本文主要是参考[https://github.com/mawenbao/emacs.d],并适当的添加自己的配置，用来保存自己的emacs配置的。
本配置以[https://github.com/tuhdo/emacs-c-ide-demo](https://github.com/tuhdo/emacs-c-ide-demo)为基础，并加入了我早年收集的若干配置而成。安装和使用的package主要有helm, projectile, cedet等，主要配置了C/C++，Golang和Python的开发环境。

## 安装
首先请备份你的`~/.emacs.d`目录，然后

    git clone https://github.com/sunhualing/emacs.d ~/.emacs.d

初次启动需要安装各种package，需要等一会，安装完成后最好重启下emacs。

每次安装package后建议手动运行下`sh tool/gen-package-list.sh`，将已安装的package名称记录到packages.list里，以后迁移的时候即可自动安装。

## 依赖
当前配置仅适用于Emacs24+，已在Linux和Win7上测试过。

为了使用helm-gtags，需要安装`global`，需要注意的是Debian/Ubuntu上的global包太过老旧，请自行[下载](http://www.gnu.org/software/global/download.html)安装global-6.2.3+版本。

为了支持go-mode下的自动补全，需要安装gocode

    go get -u github.com/nsf/gocode

为了启用jedi，需要手动安装jedi

    # jedi的版本可能有更新，目录名称里的时间可能不是这个
    cd ~/.emacs.d/elpa/jedi-core-20140321.1323
    sudo python setup.py install

在Windows系统上使用时，建议运行`python tool/install-emacs-registry.py`安装下Emacs的注册表配置。

## 目录结构说明

* init.el       配置文件入口
* elpa/         从melpa下载的package包统一放置于此
* save.d/       各种package的本地存储统一放在该目录
* site-lisp/    手动安装的第三方package
* custom/
    * custom-funcs.el   自定义的function或macro
    * custom-save.el    保存emacs的界面选项(font, theme等)
    * setup-misc.el     各种emacs的配置
    * setup-packages.el 各种package的简单配置
    * package-config/   该目录下存放一些比较复杂的package配置
    * setup-prog.el     编程和编辑方面的配置
    * setup-keys.el     快捷键方面的配置(部分package的快捷键配置位于package-config目录里面)
* packages.list 记录已安装的package名称，由`tool/gen-package-list.sh`自动生成
* tool/         各种工具
    * gen-package-list.sh   更新已安装的package列表

## 各种错误
1. 安装时报错: Trying to parse HTTP response code in odd buffer

    解决方法是重启emacs

2. `helm-gtags-update-tags`报错: Failed: update TAGS

    升级global至6.2.3+版本，然后运行<kbd>M-x helm-gtags-create-tags</kbd>

## Key binding
1. M-. 查找一个tag，比如函数定义类型定义等。

   C-u M-. 查找下一个tag的位置
   
   M-* 回到上一次运行M-.前的光标位置。
   
   M-TAB 自动补齐函数名。
   
   C-F3 highlight-symbol 高亮当前符号
   
   F3   highlight-symbol-next  到下一个高亮符号
   
   shift+ F3 highlight-symbol-prev 到前一个高亮符号
   
   M+ f3     highlight-symbol-query-replace 高亮符号替换
