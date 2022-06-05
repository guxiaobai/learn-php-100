# Swoole

|本期版本| 上期版本
|:---:|:---:
`Sun Jun  5 18:21:57 CST 2022` | -

### 依赖

```bash
sudo apt-get install php7.4-dev
```

### 安装

```bash
sudo pecl install swoole
```

```bash
echo "extension=swoole.so" | sudo tee -a /etc/php/7.4/mods-available/swoole.ini

```

```bash
phpenmod -s ALL swoole
service php7.4-fpm restart
```



## Ref

* [https://github.com/swoole/swoole-src](https://github.com/swoole/swoole-src)