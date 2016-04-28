#git install ignnore
#
location=git@github.com:git4xuan/ghost.git

email=git4xuan+git@gmail.com
ssh-keygen -t rsa -C "$email"
echo `more ~/.ssh/id_rsa.pub`
echo "add ssh pair to github or others"
sleep 20

git clone $location

mkdir -p content
cp -rf  ghost/images ghost/themes ghost/data ghost/apps ghost/config.js  content/

