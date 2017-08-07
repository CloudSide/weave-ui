FROM node:6
RUN mkdir /source
WORKDIR /source
COPY package.json bower.json ./
COPY scripts ./scripts
RUN npm install && npm install -g bower && bower --allow-root  install && bower install ember --allow-root && npm cache clean && bower --allow-root cache clean
COPY . /source
CMD ["npm","start","--","--ssl=false"]
