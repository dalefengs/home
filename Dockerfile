FROM node:18-alpine
WORKDIR /web

COPY . .

RUN npm install && npm install -g http-server

RUN npm install -g http-server

CMD ["sh", "-c", "rm -rf ./dist || true && npm run build && http-server dist -p 12445"]
