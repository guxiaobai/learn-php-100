## ✅ MySQL

```bash
brew install mysql@8.0
fish_add_path /opt/homebrew/opt/mysql@8.0/bin

brew services start mysql@8.0
```

## ✅  Nginx

```bash
brew install nginx
brew services start nginx

curl http://127.0.0.1:8080/
```

## ✅ PHP

```bash
brew tap shivammathur/php

brew install shivammathur/php/php@7.4
```

```
To enable PHP in Apache add the following to httpd.conf and restart Apache:
    LoadModule php7_module /opt/homebrew/opt/php@7.4/lib/httpd/modules/libphp7.so

    <FilesMatch \.php$>
        SetHandler application/x-httpd-php
    </FilesMatch>

Finally, check DirectoryIndex includes index.php
    DirectoryIndex index.php index.html

The php.ini and php-fpm.ini file can be found in:
    /opt/homebrew/etc/php/7.4/

php@7.4 is keg-only, which means it was not symlinked into /opt/homebrew,
because this is an alternate version of another formula.

If you need to have php@7.4 first in your PATH, run:
  fish_add_path /opt/homebrew/opt/php@7.4/bin
  fish_add_path /opt/homebrew/opt/php@7.4/sbin

For compilers to find php@7.4 you may need to set:
  set -gx LDFLAGS "-L/opt/homebrew/opt/php@7.4/lib"
  set -gx CPPFLAGS "-I/opt/homebrew/opt/php@7.4/include"

To start shivammathur/php/php@7.4 now and restart at login:
  brew services start shivammathur/php/php@7.4
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/php@7.4/sbin/php-fpm --nodaemonize
```



## 配置

----

* <https://demo.bt.cn/>
* <https://ask.fastadmin.net/question/41934.html>

```
server {
  listen       8080;
  server_name  localhost;
  index index.php;
  root   /opt/homebrew/var/www/fastadmin/public;
  
  location / {
  	if (!-e $request_filename) {
        rewrite ^(.+?\.php)(/.+)$ /$1?s=$2 last;
        rewrite ^(.*)$ /index.php?s=$1 last;
        break;
    }
  }
  
  location ~ \.php$ {
         
           fastcgi_pass   127.0.0.1:9000;
           fastcgi_index  index.php;
           fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
           include        fastcgi_params;
        }
}
```





* [https://www.kancloud.cn/manual/thinkphp5/177576]

## Ref



* <https://github.com/shivammathur/homebrew-php/>