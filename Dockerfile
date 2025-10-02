FROM node:20-bullseye
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm ci
COPY . .
EXPOSE 8080
CMD ["npm","start"]
