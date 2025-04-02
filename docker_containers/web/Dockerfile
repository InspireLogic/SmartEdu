FROM node:18

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install

COPY . .
CMD ["yarn", "dev"]

EXPOSE 5173
