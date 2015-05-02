
set -e;
(echo "<% url='$1'; port='$2' %>" && cat /www/nginx-subdomain-creation/code-site.erb && echo "") | erb > /etc/nginx/sites-available/$1;
ln -s /etc/nginx/sites-available/$1 /etc/nginx/sites-enabled/$1;
nginx -s reload;
echo "successfully created site $1"
