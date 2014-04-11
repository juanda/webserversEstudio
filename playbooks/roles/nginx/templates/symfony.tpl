server {
    listen 8080;

    server_name symfony.webservers.estudio;
    root        /home/juanda/colabora/web;
    
    rewrite     ^/(app|app_dev)\.php/?(.*)$ /$1 permanent;

    location / {
        index       app_dev.php;
        try_files   $uri @rewriteapp;
    }

    location @rewriteapp {
        rewrite     ^(.*)$ /app_dev.php/$1 last;
    }

    location ~ ^/(app|app_dev|config)\.php(/|$) {
        #fastcgi_pass            unix:/var/run/php5-fpm.sock;
        fastcgi_pass             127.0.0.1:9000;
        fastcgi_split_path_info ^(.+\.php)(/.*)$;
        include                 fastcgi_params;
        fastcgi_param           SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param           HTTPS           off;
    }
}