FROM bbilly1/tubearchivist
RUN grep -vwE "auth_request" /etc/nginx/sites-available/default > /etc/nginx/sites-available/default2 && rm /etc/nginx/sites-available/default && mv /etc/nginx/sites-available/default2 /etc/nginx/sites-available/default
CMD ["./run.sh"]