# copy and git
email=git4xuan+git@gmail.com
name=`hostname`
msg=`date +%h%m%d`
#cp -rf content/* /var/lib/ghost/

cd /var/lib/ghost/
##generate ssh
#ssh-keygen -t rsa -C "$email"
#echo `more ~/.ssh/id_rsa.pub`



## git 
git init
git config --global user.email "$email"
git config --global user.name "$name"
git add * 
git commit -m "$msg"
git remote add origin git@github.com:git4xuan/ghost.git


git push -u origin master
