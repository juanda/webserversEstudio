server {
    listen 8080;

    root        /home/vagrant/www;

    location / {
        index       index.php;
        try_files   $uri @rewriteapp;
    }    
    
    location ~ \.php$ {
           fastcgi_split_path_info ^(.+\.php)(/.+)$;
           # NOTE: You should have "cgi.fix_pathinfo = 0;" in php.ini
    
           # With php5-cgi alone:
           fastcgi_pass 127.0.0.1:9000;
           # With php5-fpm:
           #fastcgi_pass unix:/var/run/php5-fpm.sock;
           fastcgi_index index.php;
           include fastcgi_params;
     }

}
