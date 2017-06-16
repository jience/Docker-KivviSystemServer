# KivviSystemServer

# Docker下部署Flask应用

将文件放在项目主目录下(KivviSystemServer项目目录下)<br>
然后执行：<br>
    make build<br>
成功后执行：<br>
    make run


# HTTPS
docker run -d --name=mongodb1 
-p 27017:27017 -p 28017:28017 -e AUTH=no -e MONGODB_PASS="3ejzlju.YMUK2" tutum/mongodb



server {
    listen 443;
    ssl on;
    ssl_certificate /etc/ssl/nginx.crt;        # path to your cacert.pem
    ssl_certificate_key /etc/ssl/nginx.key;    # path to your privkey.pem

    location / {



# To enable HTTPS, we need to copy certs and a new nginx.conf
COPY /home/cynovo/ssl/nginx.conf /etc/nginx/
COPY /home/cynovo/ssl/default.conf /etc/nginx/conf.d/
COPY /home/cynovo/ssl/nginx.crt /etc/ssl/
COPY /home/cynovo/ssl/nginx.key /etc/ssl/
