#This is the default file that was downloaded from the server for the configuration of NGINX

server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/{{ website_name }};

        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
                
                try_files $uri $uri/ =404;
        }       
}
