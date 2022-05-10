sudo apk add --no-cache libgcc libstdc++ curl
curl -fLOs https://github.com/oznu/alpine-node/releases/download/16.15.0/node-v16.15.0-linux-x86_64-alpine.tar.gz
sudo tar -xzf node-v16.15.0-linux-x86_64-alpine.tar.gz -C /usr --strip-components=1 --no-same-owner
rm -rf node-v16.15.0-linux-x86_64-alpine.tar.gz
sudo npm install -g npm@8.9.0
cd /var/www/html
npm install
