FROM dockerproxy.aexp.com/node:20
WORKDIR /LoungeBuddy
COPY package.json .
RUN npm install --loglevel verbose

COPY index.js .
CMD ["npm", "run", "start"]
