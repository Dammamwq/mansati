FROM node:18-alpine
WORKDIR /usr/src/app
COPY package*.json pnpm-lock.yaml* ./
RUN npm install -g pnpm && pnpm install
COPY . .
RUN pnpm build
EXPOSE 4000
CMD ["node", "dist/index.js"]
