# php 扩展源码编译安装和软件包安装以及 libvirt-php 扩展介绍

|本期版本|上期版本 
|:---:|:---:
`Sat Jun  4 23:19:21 CST 2022` | 

* `dpkg -l package`: 已安装软件包的状态(每个占一行)
* `apt info php7.4-cli`: 查看软件包信息

## Extension

> `extension_dir`


**Show configuration file names**

> `--with-config-file-path`

```bash
php --ini
```
**PHP information**

> `--with-config-file-scan-dir`

```bash
php -i |grep extension_dir
```


```bash
# php7.4-dev
php-config --extension-dir
```

```bash
php -r "echo ini_get('extension_dir');"
```

```
php --ri json
php --re json
```

**动态库依赖查看**

* `ldd`

## 扩展编译

* `config.m4`、`phpize`


## Ref

* [`https://www.bilibili.com/video/BV1eQ4y1B7Y4?spm_id_from=333.999.0.0`](https://www.bilibili.com/video/BV1eQ4y1B7Y4?spm_id_from=333.999.0.0)
* [php.ini 核心配置选项说明](https://www.php.net/manual/zh/ini.core.php#ini.core)
* [PHP: 配置文件 - Manual](https://www.php.net/manual/zh/configuration.file.php#configuration.file)
* [PHP: php-config - Manual](https://www.php.net/manual/zh/install.pecl.php-config.php)
* [PHP: ini_get - Manual](https://www.php.net/manual/zh/function.ini-get)