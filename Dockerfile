FROM bbilly1/tubearchivist
RUN grep -vwE "auth_request" /etc/nginx/sites-available/default/nginx.conf > /etc/nginx/sites-available/default/nginx2.conf && rm /etc/nginx/sites-available/default/nginx.conf && mv /etc/nginx/sites-available/default/nginx2.conf /etc/nginx/sites-available/default/nginx.conf
CMD ["./run.sh"]