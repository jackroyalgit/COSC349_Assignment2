apt-get update
apt-get install -y apache2 php libapache2-mod-php php-mysql
cp /vagrant/assgn-website.conf /etc/apache2/sites-available/

chmod 755 /vagrant
chmod 755 /vagrant/www
chmod 755 /home/ubuntu

cd /vagrant/www
find . -type f -exec chmod 644 {} \;

# install our website configuration and disable the default
a2ensite assgn-website
a2dissite 000-default
service apache2 reload

