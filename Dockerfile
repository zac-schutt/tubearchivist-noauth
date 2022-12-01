FROM bbilly1/tubearchivist:v0.2.4

# Remove authentication from nginx configuration
RUN grep -vwE "auth_request" /etc/nginx/sites-available/default > /etc/nginx/sites-available/default2
RUN rm /etc/nginx/sites-available/default
RUN mv /etc/nginx/sites-available/default2 /etc/nginx/sites-available/default

#start
CMD ["./run.sh"]