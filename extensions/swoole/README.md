# Swoole

|本期版本| 上期版本
|:---:|:---:
`Mon May 15 02:33:59 CST 2023` | `Sun Jun  5 18:21:57 CST 2022`

### 依赖

```bash
sudo apt-get install php-dev
```

### 安装

```bash
sudo pecl install swoole
```

```bash
echo "extension=swoole.so" | sudo tee -a /etc/php/8.1/mods-available/swoole.ini
```

```bash
sudo phpenmod -s ALL swoole
sudo service php8.1-fpm restart
```



## Ref

* <https://github.com/swoole/swoole-src>