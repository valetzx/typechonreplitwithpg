# typechonreplitwithpg

在Replit部署typecho并使用postgresql数据库

个人版（不推荐）：

<a href="https://repl.it/github/valetzx/typechonreplitwithpg">
  <img alt="Run on Repl.it" src="https://repl.it/badge/github/valetzx/typechonreplitwithpg" style="height: 40px; width: 190px;" />
</a>

教育版：

将以下代码粘贴至Replit Shell后回车

`git clone https://github.com/valetzx/typechonreplitwithpg && mv -b typechonreplitwithpg/* ./ && mv -b typechonreplitwithpg/.[^.]* ./ && rm -rf *~ && rm -rf typechonreplitwithpg`

当加载完 Loading Nix environment... 后点击绿色 ▶ Run

在运行完成出现typecho后 点击Shell 在终端中逐行输入以下内容：
```
createdb -h 127.0.0.1
psql -h 127.0.0.1
create user admin with password 'admin';
CREATE DATABASE typecho OWNER admin;
GRANT ALL PRIVILEGES ON DATABASE typecho to admin;
```

在新窗口打开你的typecho安装界面

选择Pgsql原生函数适配器

| 参数 | 值 |
| ---- | ---- |
| 数据库前缀 | typecho_ |
| 数据库地址 | localhost |
| 数据库端口 | 5432 |
| 数据库用户名 | admin |
| 数据库密码 | admin |
| 数据库名 | typecho |

你不用担心数据库密码安全问题，填好各项参数后点击 确认，开始安装 » 设置自己的typecho用户名密码！这个请设置自己的别用弱密码！

sqlite数据库版：https://github.com/valetzx/typechonreplit
