# move configurtion to nginx sites available
cp ghost.conf /etc/nginx/sites-available/
rm /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/ghost.conf /etc/nginx/sites-enabled/ghost.conf

#service nginx start
