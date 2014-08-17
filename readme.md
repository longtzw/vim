[使用pathogen+git管理Vim插件](http://lostjs.com/tags/vim/)

git clone --recursive git@github.com:longtzw/vim.git

# 实现过文件查找替换

## 在当前目录下所有文件中查找 word

```
:vimgrep word *
```
## 在当前目录下及其子目录的所有文件中查找 word

```
:vimgrep word **
```

## 多文件替换

```
:args *.c     " 当前目录
:agrs */*.c   " 当前目录及其下级目录
:agrs **/*.c  " 当期目录及其递归下级目录
:argdo %s/hate/love/gc | update " 没有update的话不会写文件
```

# 代码折叠

命令模式下：set fdm可以看到当前使用的折叠模式，默认是manual，set fdm= foldmethod 可以设置折叠模式。

## 6种模式

- manual        手动建立折叠。
- indent        相同缩进距离的行构成折叠。
- expr          用表达式来定义折叠，'foldexpr' 给出每行的折叠级别。
- marker        标志用于指定折叠。
- syntax        语法高亮项目指定折叠。
- diff          没有改变的文本构成折叠

### indent 模式

如果使用了indent方式，vim会自动的对大括号的中间部分进行折叠。

相关快捷键：

- zc       折叠
- zC       对所在范围内所有嵌套的折叠点进行折叠
- zo       展开折叠
- zO       对所在范围内所有嵌套的折叠点展开
- [z       到当前打开的折叠的开始处。
- ]z       到当前打开的折叠的末尾处。
- zj       向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
- zk       向上移动到前一折叠的结束处。关闭的折叠也被计入。

# Section1 模式

## 1.5 命令行模式

### 1.5.1 运行shell命令

|命令                    |用途                                                 | 
|:shell                  |启动一个shell（输入exit返回Vim）                     |
|:\!\{cmd\}              |在shell中执行{cmd}                                   |
|read \!\{cmd\}          |在shell中执行{cmd}                                   |
|\[range]\write !{cmd\}  |在shell中执行\{cmd\}, 已\[range\]作为其标准输入      |
|\[range\]!\{filter\}    |使用外部程序\{filter\}过滤指定的\[range\]            |
