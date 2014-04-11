<server localhost>
    port = 8080
    listen = 0.0.0.0
    docroot = /home/vagrant/www
    

    # Where to find the fcgi server
	fcgi_app_server = 127.0.0.1:9000

	# From YAWS 1.89. To call PHP the right way if a file is called directly:
	phpfcgi=127.0.0.1:9000	
	
</server>