cd /var/www/deployment-demo/repo
git fetch --tags
TAG=$(git tag | sort -V | tail -n 1)

cd /var/www/deployment-demo
git clone --branch $TAG https://github.com/piotr-jura-udemy/deployment-demo.git ${TAG}
cd ${TAG}
composer install