FROM bitnami/centos-extras-base 
RUN yum install epel-release -y
RUN yum install nginx net-tools netcat bind-utils  -y 
RUN rm /etc/nginx/nginx.conf
RUN mkdir /nginx-conf-file && mkdir /nginx-index-file 
RUN mkdir -p /var/log/nginx  && chown nginx:nginx /var/log/nginx && touch /var/log/nginx/error.log \
&& chown -R nginx:nginx /var/log/nginx/error.log && \
chmod 640 /var/log/nginx/error.log
ADD docker-entrypoint.sh /mnt/
RUN chmod 640 /var/log/nginx/error.log
RUN chmod +x /mnt/docker-entrypoint.sh
EXPOSE 8080/tcp
CMD /mnt/docker-entrypoint.sh 
