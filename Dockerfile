FROM nginx:alpine

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

COPY html/ /usr/share/nginx/html

COPY startup.sh /
RUN chmod +x /startup.sh
CMD ["sh", "/startup.sh"]