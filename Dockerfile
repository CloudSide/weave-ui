FROM node:6
RUN mkdir /source
WORKDIR /source
COPY package.json bower.json ./
COPY scripts ./scripts
# RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN npm install -g ember-cli
RUN npm install -g yarn
RUN npm install && npm install -g bower && bower --allow-root install
# RUN npm install && npm install -g bower && bower --allow-root  install && bower install ember --allow-root && npm cache clean && bower --allow-root cache clean
COPY . /source
CMD ["yarn","start","--","--ssl=false"]
