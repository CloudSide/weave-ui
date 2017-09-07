FROM node
RUN mkdir /source
COPY . /source
WORKDIR /source
# COPY package.json bower.json ./
# COPY scripts ./scripts
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install && cnpm install -g bower && bower --allow-root install
RUN cnpm install -g ember-cli
RUN cnpm install -g yarn
# RUN bower install ember --allow-root
# RUN npm cache clean && bower --allow-root cache clean
RUN ./scripts/update-dependencies
CMD ["yarn", "start", "--", "--ssl=false"]
