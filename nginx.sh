# move configurtion to nginx sites available
cp ghost /etc/nginx/sites-available/
rm /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/ghost /etc/nginx/sites-enabled/ghost

#service nginx start
