FROM node:6
RUN mkdir /source
WORKDIR /source
COPY package.json bower.json ./
COPY scripts ./scripts
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install && cnpm install -g bower && bower --allow-root  install && bower install ember --allow-root && cnpm cache clean && bower --allow-root cache clean
COPY . /source
CMD ["npm","start","--","--ssl=false"]
