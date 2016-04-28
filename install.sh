#/bin/sh
git clone https://github.com/ptimof/docker-ghost
cd docker-ghost
sudo cp ghost.example.env /etc/default/ghost
sed -i "s/www.example.com/$1/g" /etc/default/ghost
#running in production
mkdir -p /var/lib/ghost
chown 1000:1000 /var/lib/ghost

#content
cd ..
cp -rf content/* /var/lib/ghost/

docker run --name ghost --env-file /etc/default/ghost -p 80:2368 -v /var/lib/ghost:/var/lib/ghost -d ptimof/ghost npm start --production
