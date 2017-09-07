FROM node:6
RUN mkdir /source
WORKDIR /source
COPY package.json bower.json ./
COPY scripts ./scripts
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install && cnpm install -g bower && bower --allow-root install
RUN cnpm install -g ember-cli
RUN cnpm install -g yarn
# RUN npm install && npm install -g bower && bower --allow-root  install && bower install ember --allow-root && npm cache clean && bower --allow-root cache clean
COPY . /source
CMD ["yarn","start","--","--ssl=false"]
