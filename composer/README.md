# Composer


|本期版本| 上期版本 
|:---:|:---:
`Sun Jun  5 14:56:07 CST 2022` | -


### 依赖

> [Support 7-zip on non-Windows platforms #9951](https://github.com/composer/composer/issues/9951)

```bash
apt-get install php7.4-curl php7.4-zip unzip p7zip-full
```

### 安装

```bash
curl -O https://mirrors.aliyun.com/composer/composer.phar
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
```

> `/etc/profile.d/composer.sh`

```bash
export PATH=$HOME/.config/composer/vendor/bin:$PATH
```

> 全局配置

```bash
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
```

> 项目配置

```bash
composer config repo.packagist composer https://mirrors.aliyun.com/composer/
```

### 更新

> [https://composer.github.io/pubkeys.html](https://composer.github.io/pubkeys.html)

```bash
composer self-update --update-keys
```

**检查**

```bash
composer diagnose
```


## Ref

* [https://getcomposer.org/](https://getcomposer.org/)
* [https://packagist.org/](https://packagist.org/)
* [阿里云 Composer 全量镜像](https://developer.aliyun.com/composer)