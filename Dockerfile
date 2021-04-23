FROM node:12

COPY ["package.json", "package-lock.json", "/code/"]

WORKDIR /code

RUN npm install

COPY [".", "/code/"]

EXPOSE 3000

CMD ["node", "index.js"]
