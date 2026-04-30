FROM node:18-alpine AS builder
WORKDIR /app
COPY app/ .
RUN npm install

FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app .
EXPOSE 3000
CMD ["node", "index.js"]
