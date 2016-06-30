FROM jwilder/nginx-proxy
ADD proxy.conf /etc/nginx/proxy.conf
RUN sed -i "s/default upgrade/default 'keep-alive, Upgrade'/" nginx.tmpl
RUN echo 'client_max_body_size 1250m;' > /etc/nginx/conf.d/client_max_body_size.conf
