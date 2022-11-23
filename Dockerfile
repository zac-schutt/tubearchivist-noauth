FROM bbilly1/tubearchivist

# Remove authentication from nginx configuration
RUN grep -vwE "auth_request" /etc/nginx/sites-available/default > /etc/nginx/sites-available/default2
RUN rm /etc/nginx/sites-available/default
RUN mv /etc/nginx/sites-available/default2 /etc/nginx/sites-available/default
RUN /usr/sbin/nginx -s reload

#start
CMD ["./run.sh"]