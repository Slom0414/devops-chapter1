FROM node:20-slim

WORKDIR /app

# 先拷贝依赖声明
COPY package*.json ./

# 只装生产依赖
RUN npm install --production

# 再拷贝代码
COPY . .

# 默认环境变量
ENV PORT=8080
ENV ENV=local

EXPOSE 8080

CMD ["npm", "start"]
