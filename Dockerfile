FROM node:20-slim

WORKDIR /app

# 先拷贝依赖声明
COPY package*.json ./

# 只装生产依赖
RUN npm install --production

# 再拷贝代码
COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["npm", "start"]
